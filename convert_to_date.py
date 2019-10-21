# encoding: utf-8

import re
import sys
import datetime
import argparse

from collections import OrderedDict

all_intervals_days = []

# def short_to_long(short_to_date):
#     date_ptrn =  "\d\d-\d\d-\d\d\d\d"
#     date = "to_date(\'" + re.search(date_ptrn, short_to_date.lower()).group(0) + " 00:00:00\', \'dd-mm-yyyy hh24:mi:ss\')"
#     # date = "to_date(" + str(re.findall(date_ptrn, line.lower())).strip('[""]')
#     return date


# Преобразуем строку формата 2019-09-30 00:00:00 или 2019-09-30 к datetime
def string_to_datetime(only_date):
    date_ptrn_long = "%d-%m-%Y %H:%M:%S"
    date_ptrn_short = "%d-%m-%Y"
    
    if len(only_date) > 11:
        date_time = datetime.datetime.strptime(only_date, date_ptrn_long) # Получаем дату, как datetime
#         date_time = date_time.strftime(date_ptrn_long)
    else:
        date_time = datetime.datetime.strptime(only_date, date_ptrn_short)
        
    return date_time

# Формирование из строки вида to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss') объект date_time
def get_only_date(to_date_str):
    only_date = to_date_str.split('\'')[1]
#     only_date = re.sub(r"\'\,.*", "", without_to_date_str)
#     date_time = string_to_datetime(only_date)  # Получаем дату, как datetime
    date_time = (only_date)  # Получаем дату, как datetime
    
    return date_time


# Формирование строки для SQL-файла вида SYSDATE + INTERVAL...
def get_sysdate_string(time_delta, sign):
    days = time_delta.days
    all_intervals_days.append(int(days))
    hours = time_delta.seconds // 3600
    minutes = time_delta.seconds % 3600 // 60
    seconds = time_delta.seconds % 3600 % 60
    #     print('\n[DEBUG] delta = ', time_delta, '; days = ', days, '; hours = ', hours, '; mins = ', minutes, ', secs = ',
    #         seconds, sep='')                                                    # [DEBUG]

    sysdate_string = "SYSDATE" + timedelta_to_interval(days, "days", sign) \
                     + timedelta_to_interval(hours, "hours", sign) \
                     + timedelta_to_interval(minutes, "minutes", sign) \
                     + timedelta_to_interval(seconds, "seconds", sign)

    print("[DEBUG] String for sql file:", sysdate_string)                     # [DEBUG]

    return sysdate_string

# Т.к. Oracle не позволяет использовать большие значения для SYSDATE + INTERVAL,
# приходится пропорционально уменьшать эти значения
def reduce_days(dict_to_date):
    ptrn = "\'(\d*)\' DAY"
    max_day = 90
    ratio = max_day / max(all_intervals_days)
    for key,value in dict_to_date.items():
        day_value = re.search(ptrn, value)
        if day_value is not None:
            reduced_day_value = "'" + str(round(int(day_value[1]) * ratio)) + "' DAY"
            dict_to_date[key] = re.sub(ptrn, reduced_day_value, value)


# Формирование из time_delta строки вида -/+ INTERVAL 'N' DAY/HOUR/MINUTE/SECOND
def timedelta_to_interval(time, unit, sign):
    delta_str = ""
    time_units = {"days": "DAY",
                  "hours": "HOUR",
                  "minutes": "MINUTE",
                  "seconds": "SECOND"}
    if time > 0:
        delta_str = " " + sign + " INTERVAL \'" + str(time) + "\' " + time_units[unit]
    elif time < 0:
        delta_str = " " + sign + " INTERVAL \'" + str(-time) + "\' " + time_units[unit]

    return delta_str


# Создание файл с преобразованными to_date в SYSDATE +/- INTERVAL
def create_converted_file(src_file, dst_file, dict_with_to_dates):
    with open(src_file, mode="r", encoding="utf-8") as source_data:
        with open(dst_file, mode='w', encoding="utf-8") as dest_data:
            for line in source_data:
                new_string = line
                for to_date_str in dict_with_to_dates.keys():
                    if line.find(to_date_str) >= 0:
                        new_string = line.replace(to_date_str, dict_with_to_dates[to_date_str])
                dest_data.write(new_string)


# Создание парсера для аргументов командной строки
def create_arg_parser():
    parser = argparse.ArgumentParser()
    parser.add_argument('file')

    return parser


def print_to_dates(dates):
    for i in range(len(dates)):
        print('[', i, '] ', dates[i].strftime("%d-%m-%Y %H:%M:%S"), sep='')

def print_to_dates_dict(dict):
    # dict(sorted())
    for id, item in enumerate(dict):
#         print("[", id, "] ", item, " = ", dict[item].strftime("%d-%m-%Y %H:%M:%S"), sep='')
        print("[", id, "] ", item, " = ", dict[item], sep='')

def pop_by_index(dict, index):
    if index > len(dict):
        print("big index")
        return  dict
    for id, item in enumerate(dict):
        if id == index:
            dict.pop(item)
            break
    return dict

def get_value_by_index(dict, index):
    for id, key in enumerate(dict):
        if id == index:
            return dict[key]
    return -1

# main
if __name__ == '__main__':
    parser = create_arg_parser()
    namespace = parser.parse_args(sys.argv[1:])
#     print("namespace", namespace.file, namespace)
    filename = namespace.file

    long_ptrn = "to_date\(\'\d\d-\d\d-\d{4} \d\d:\d\d:\d\d\', \'\S{10} \S{10}\'\)"
    short_pattern = "to_date\(\'\d\d-\d\d-\d\d\d\d\', \'dd-mm-yyyy\'\)"
    example_string = "to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss')"

    # dict_of_to_dates = {}  # Словарь, в котором лежат все выражения to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss')
    dict_of_to_dates = OrderedDict()

    with open(filename, mode="r", encoding="utf-8") as file:
        for line in file:
            short_todate = re.findall(short_pattern, line.lower())
            for date in short_todate:
#                 dict_of_to_dates.setdefault(short_to_long(date), "")
                dict_of_to_dates.setdefault((date), "")

            filtered_line = re.findall(long_ptrn, line.lower())  # Строка, удовлетворяющая regexp'у
            # if filtered_line:
            for date in filtered_line:
                # print('[DEBUG] Long format to_date =', date)  # [DEBUG]
                dict_of_to_dates.setdefault(date, "")  # Добавляем выражение, которое надо заменить и заменяющее выражение = ""

    list_Dates = []  # Список, хранящий только лишь даты

#     print("dict with duplicates")
#     for key, value in dict_of_to_dates.items():
#         print('dict_of_to_dates[', key, ']=', value)

    # Формирование списка дат без повторов
    for to_date_str in dict_of_to_dates.keys():
        print(to_date_str)
        dict_of_to_dates[to_date_str] = get_only_date(to_date_str)
        list_Dates.append(dict_of_to_dates[to_date_str])
#         print("[DEBUG] Accordance:", to_date_str, '->', dict_of_to_dates[to_date_str])    # [DEBUG]

    ###########################
    # Выбор SYSDATE
#     list_Dates = sorted(list_Dates)
    # not_converted = input()
    # for i in not_converted:
    #     print
    # while True:
    #     print('\nChoose number of date which won''t be converted (press \'x\' for next step):')
    #     print_to_dates(list_Dates)
    #     not_converted = input()
    #     print(not_converted)  # DEBUG
    #     if str(not_converted).lower() == 'x':
    #         break
    #     # if str(not_converted).lower() > len(list_Dates) - 1:
    #     #     print("Incorrect number. Please, repeat")
    #     #     continue
    #     try:
    #         list_Dates.pop(int(not_converted))
    #     except IndexError:
    #         print("ERROR! Incorrect number. Please, repeat")
    #         continue



    ordered_dict = OrderedDict(sorted(dict_of_to_dates.items(), key=lambda date: date[1]))

    while True:
        print('\nChoose number of date which won''t be converted (press \'x\' for next step):')
        print_to_dates_dict(ordered_dict)
        not_converted = input()
        # not_converted = 'x'
        print("хотим удалить элемент ", not_converted)  # DEBUG
        if str(not_converted).lower() == 'x':
            break
        if '0' <= not_converted < str(len(ordered_dict)):
            ordered_dict = pop_by_index(ordered_dict, int(not_converted))
        else:
            print("ERROR! Wrong index. Please repeat")

    print('\nChoose number of date which will be the SYSDATE:')
    print_to_dates_dict(ordered_dict)
    # print_to_dates(list_Dates)
    # sys_date_num = int(input())
#     sysdate_str = str(get_value_by_index(ordered_dict, int(input())))
    sysdate_str = str(get_value_by_index(ordered_dict, 3))
    # ###########################
    # print("что то получили из словаря ", sysdate_str)
    date_pattern2 = "%Y-%m-%d %H:%M:%S"
#     sys_date = string_to_datetime(sysdate_str).strptime()
    sys_date = sysdate_str
#     print('\nSYSDATE =', sys_date.strftime("%d-%m-%Y %H:%M:%S"))
    print('\nSYSDATE =', sys_date)

    # Каждой функции to_date ставим в соответствие SYSDATE +/- INTERVAL
    for to_date_str in ordered_dict.keys():
        if sys_date < ordered_dict[to_date_str]:
#             time_delta = ordered_dict[to_date_str] - sys_date
            time_delta = string_to_datetime(ordered_dict[to_date_str]) - string_to_datetime(sys_date)
            sign = '+'
        else:
#             time_delta = (sys_date - ordered_dict[to_date_str])
            time_delta = (string_to_datetime(sys_date) - string_to_datetime(ordered_dict[to_date_str]))
            sign = '-'
        ordered_dict[to_date_str] = get_sysdate_string(time_delta, sign)
        print(to_date_str, '->', ordered_dict[to_date_str])

    reduce_days(ordered_dict)

    source_file = filename
    dest_file = "new_" + filename
    create_converted_file(source_file, dest_file, ordered_dict)


    # Каждой функции to_date ставим в соответствие SYSDATE +/- INTERVAL
    # for to_date_str in dict_of_to_dates.keys():
    #     if sys_date < dict_of_to_dates[to_date_str]:
    #         time_delta = dict_of_to_dates[to_date_str] - sys_date
    #         sign = '+'
    #     else:
    #         time_delta = (sys_date - dict_of_to_dates[to_date_str])
    #         sign = '-'
    #     dict_of_to_dates[to_date_str] = get_sysdate_string(time_delta, sign)
    #     print(to_date_str, '->', dict_of_to_dates[to_date_str])

    # source_file = filename
    # dest_file = "new_" + filename
    # create_converted_file(source_file, dest_file, dict_of_to_dates)

    print("\nConverting is finished")