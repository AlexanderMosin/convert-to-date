# encoding: utf-8

import re
import sys
import datetime
import argparse


# Формирование из строки вида to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss') объект date_time
def get_only_date(to_date_str, date_pattern):
    without_to_date_str = to_date_str.strip('to_date(\'')
    only_date = re.sub(r"\'\,.*", "", without_to_date_str)

    date_time = datetime.datetime.strptime(only_date, date_pattern)             # Получаем дату, как datetime

    return date_time


# Формирование строки для SQL-файла вида SYSDATE + INTERVAL...
def get_sysdate_string(time_delta, sign):
    days = time_delta.days
    hours = time_delta.seconds // 3600
    minutes = time_delta.seconds % 3600 // 60
    seconds = time_delta.seconds % 3600 % 60
#     print('\n[DEBUG] delta = ', time_delta, '; days = ', days, '; hours = ', hours, '; mins = ', minutes, ', secs = ',
#         seconds, sep='')                                                    # [DEBUG]

    sysdate_string = "SYSDATE" + timedelta_to_interval(days, "days", sign) \
                               + timedelta_to_interval(hours, "hours", sign) \
                               + timedelta_to_interval(minutes, "minutes", sign) \
                               + timedelta_to_interval(seconds, "seconds", sign)

#     print("[DEBUG] String for sql file:", sysdate_string)                     # [DEBUG]

    return sysdate_string


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


# main
if __name__ == '__main__':
    parser = create_arg_parser()
    namespace = parser.parse_args(sys.argv[1:])
    print("namespace", namespace.file, namespace)
    filename = namespace.file

    pattern = "to_date\(\'.*\', \'.*hh24:mi:ss\'\)"
    example_string = "to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss')"

    dict_of_to_dates = {}                                                           # Словарь, в котором лежат все выражения to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss')

    with open(filename, mode="r", encoding="utf-8") as file:
        for line in file:
            filtered_line = str(re.findall(pattern, line.lower())).strip('[""]')    # Строка, удовлетворяющая regexp'у
            if not filtered_line:
                continue
#             print('[DEBUG] Line =', filtered_line)  # [DEBUG]

            dict_of_to_dates.setdefault(filtered_line, "")                          # Добавляем в словарь выражение, которое надо заменить и заменяющее выражение = ""
 
    list_Dates = []                                                                 # Список, хранящий только лишь даты
    date_pattern = "%d-%m-%Y %H:%M:%S"
 
    # Формирование списка дат без повторов
    for to_date_str in dict_of_to_dates.keys():
        dict_of_to_dates[to_date_str] = get_only_date(to_date_str, date_pattern)
        list_Dates.append(dict_of_to_dates[to_date_str])
        # print("[DEBUG] Accordance:", to_date_str, '->', dict_of_to_dates[to_date_str])    # [DEBUG]
 
 
    ###########################
    # Выбор SYSDATE
    list_Dates = sorted(list_Dates)
    print('\nChoose number of date for SYSDATE:')
    for i in range(len(list_Dates)):
        print('[', i, '] ', list_Dates[i].strftime("%d-%m-%Y %H:%M:%S"), sep='')
 
    sys_date_num = int(input())
    sysdate_str = str(list_Dates[sys_date_num])
    ###########################
    
    
    date_pattern2 = "%Y-%m-%d %H:%M:%S"
    sys_date = get_only_date(sysdate_str, date_pattern2)
    print('\nSYSDATE:', sys_date.strftime("%d-%m-%Y %H:%M:%S"))
 
    # Каждой функции to_date ставим в соответствие SYSDATE +/- INTERVAL
    for to_date_str in dict_of_to_dates.keys():
        if sys_date < dict_of_to_dates[to_date_str]:
            time_delta = dict_of_to_dates[to_date_str] - sys_date
            sign = '+'
        else:
            time_delta = (sys_date - dict_of_to_dates[to_date_str])
            sign = '-'
        dict_of_to_dates[to_date_str] = get_sysdate_string(time_delta, sign)
        print(to_date_str, '->', dict_of_to_dates[to_date_str])
 
    source_file = filename
    dest_file = "new_" + filename
    create_converted_file(source_file, dest_file, dict_of_to_dates)

    print("\nConverting is finished")
