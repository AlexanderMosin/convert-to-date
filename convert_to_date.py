# encoding: utf-8

import re
import sys
import datetime
import argparse

from collections import OrderedDict

# Преобразуем строку c датой формата 2019-09-30 00:00:00 или 2019-09-30 к datetime
def string_to_datetime(only_date):
    date_ptrn_long = "%d-%m-%Y %H:%M:%S"
    date_ptrn_short = "%d-%m-%Y"

    # Конвертируем в datetime. Формат функции to_date определяем по длине
    if len(only_date) > 11:
        date_time = datetime.datetime.strptime(only_date, date_ptrn_long)
    else:
        date_time = datetime.datetime.strptime(only_date, date_ptrn_short)
        
    return date_time


# Получение из to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss') даты строкой вида '10-07-2019 15:48:56'
def get_only_date(to_date_str):
    only_date = to_date_str.split('\'')[1]
    return only_date


# Формирование строки для SQL-файла вида SYSDATE + INTERVAL...
def get_sysdate_string(time_delta, sign):
    days = time_delta.days

    years = days // 365
    if years > 0:
        days = days - years * 365

    months = days // 30
    if months > 0:
        days = days - months * 30
        months = months - 1
        days = days + 30

    hours = time_delta.seconds // 3600
    minutes = time_delta.seconds % 3600 // 60
    seconds = time_delta.seconds % 3600 % 60
    # print('\n[DEBUG] delta = ', time_delta, '; years = ', years, '; months = ', months, 'days = ', days,
    #       '; hours = ', hours, '; mins = ', minutes, ', secs = ', seconds, sep='')  # [DEBUG]

    sysdate_string = "SYSDATE" + timedelta_to_interval(years, "years", sign)\
                     + timedelta_to_interval(months, "months", sign)\
                     + timedelta_to_interval(days, "days", sign)\
                     + timedelta_to_interval(hours, "hours", sign)\
                     + timedelta_to_interval(minutes, "minutes", sign)# \           # Точность до секунда не важна
                     # + timedelta_to_interval(seconds, "seconds", sign)

    # print("[DEBUG] String for sql file:", sysdate_string)                     # [DEBUG]
    return sysdate_string


# Формирование из time_delta строки вида -/+ INTERVAL 'N' DAY/HOUR/MINUTE/SECOND
def timedelta_to_interval(time, unit, sign):
    delta_str = ""
    time_units = {"years": "YEAR",
                  "months": "MONTH",
                  "days": "DAY",
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
                for to_date_str in dict_with_to_dates.keys():
                    if line.find(to_date_str) >= 0:
                        line = line.replace(to_date_str, dict_with_to_dates[to_date_str])
                dest_data.write(line)


# Создание парсера для аргументов командной строки
def create_arg_parser():
    parser = argparse.ArgumentParser()
    parser.add_argument('file')
    return parser


def print_to_dates_dict(dict):
    for id, item in enumerate(dict):
        print("[", id, "] ", item, " = ", dict[item][0], sep='')


def pop_by_index(dict, index):
    if index > len(dict):
        print("big index")
        return dict
    for id, item in enumerate(dict):
        if id == index:
            dict.pop(item)
            break
    return dict


def get_value_by_index(dict, index):
    for id, key in enumerate(dict):
        if id == index:
            return dict[key][0]
    return -1


# main
if __name__ == '__main__':
    parser = create_arg_parser()
    namespace = parser.parse_args(sys.argv[1:])
    filename = namespace.file
    print(filename)
    long_ptrn = "to_date\(\'\d\d-\d\d-\d{4} \d\d:\d\d:\d\d\', \'\S{10} \S{10}\'\)"
    short_ptrn = "to_date\(\'\d\d-\d\d-\d\d\d\d\', \'dd-mm-yyyy\'\)"

    dict_of_to_dates = OrderedDict()    # Словарь со всеми операторами to_date(...)
    # Считываем файл и формируем словарь с to_date
    with open(filename, mode="r", encoding="utf-8") as file:
        for line in file:
            short_to_date = re.findall(short_ptrn, line.lower())     # Строка, удовлетворяющая regexp'у
            for date in short_to_date:
                dict_of_to_dates.setdefault((date), "")

            long_to_date = re.findall(long_ptrn, line.lower())
            for date in long_to_date:
                # print('[DEBUG] Long format to_date =', date)  # [DEBUG]
                dict_of_to_dates.setdefault(date, "")

    # Формирование списка дат без повторов
    for to_date_str in dict_of_to_dates.keys():
        print(to_date_str)
        dict_of_to_dates[to_date_str] = get_only_date(to_date_str)
#         print("[DEBUG] Accordance:", to_date_str, '->', dict_of_to_dates[to_date_str])    # [DEBUG]

    # Для каждого to_date ставим в соответствие только дату в формате string и datetime
    newdct = OrderedDict()
    for key in dict_of_to_dates.keys():
        newdct[key] = [dict_of_to_dates[key], string_to_datetime(dict_of_to_dates[key])]
    # Сортируем словарь с датами
    ordered_dict = OrderedDict(sorted(newdct.items(), key=lambda date: date[1][1]))

    while True:
        print('\nChoose number of date which won''t be converted (press \'x\' for next step):')
        print_to_dates_dict(ordered_dict)
        not_converted = input()
        # print("[DEBUG] Delete element =", not_converted)                        # [DEBUG]
        if str(not_converted).lower() == 'x':
            break
        if '0' <= not_converted < str(len(ordered_dict)):
            ordered_dict = pop_by_index(ordered_dict, int(not_converted))
        else:
            print("ERROR! Wrong index. Please repeat")

    print('\nChoose number of date which will be the SYSDATE:')
    print_to_dates_dict(ordered_dict)
    sysdate_str = str(get_value_by_index(ordered_dict, int(input())))
    sys_date = string_to_datetime(sysdate_str)
    print('\nSYSDATE =', sys_date)

    # Каждой функции to_date ставим в соответствие SYSDATE +/- INTERVAL
    for to_date_str in ordered_dict.keys():
        changeable_date = string_to_datetime(ordered_dict[to_date_str][0])

        if sys_date < changeable_date:
            time_delta = changeable_date - sys_date
            sign = '+'
        else:
            time_delta = sys_date - changeable_date
            sign = '-'
        ordered_dict[to_date_str] = get_sysdate_string(time_delta, sign)
        print(to_date_str, '->', ordered_dict[to_date_str])

    source_file = filename
    dest_file = "new_" + filename
    create_converted_file(source_file, dest_file, ordered_dict)

    print("\nConverting is finished")