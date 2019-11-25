# convert_to_date
Преобразовывает функции вида to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss') в SYSDATE +/- INTERVAL

Решил написать скриптик, чтобы не тратить больше время на работу с датами sql-скриптов.

Инструкция.
1. Установить Питон 3-ей версии (портал / http://www.python.org / https://www.jetbrains.com/ru-ru/pycharm/download/#section=windowsn.org)
2. Скачать скрипт
3. Запускать либо через Pycharm, либо через консоль   
`python convert-to-date.py <имя_скрипта>`  
Edit configurations -> Parameters (имя_файла)
4. Выводится список всех встречающихся to_date операторов
5. Можем исключить даты, которые не хотим преобразовывать в SYSDATE + INTERVAL (например, дату рождения или выдачи паспорта), указав соответствующий номер
6. Если больше никакие даты удалять не хотим, вводим 'x'  
7. Выбираем дату, от которой будут отсчитываться все остальные даты
8. Создается новый файл с именем `new_<имя_исходного_файла>`, содержащий преобразованные даты. Исходный файл сохраняется
