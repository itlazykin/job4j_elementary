/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

Синтаксис имеет следующий вид:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE условие ORDER BY условие_сортировки

ORDER BY в данном случае опциональное предложение, указывать необязательно.
Условие должно оцениваться как истина, ложь или неизвестность.
Это может быть логическое выражение или комбинация логических выражений.
В итоге запрос возвращает только те строки, которые удовлетворяют условию в WHERE.

Для представленной ниже схемы customers напишите запрос,
который вернет только те записи у которых значение в столбце active равно true
*/

CREATE TABLE customers(
    id int not null primary key,
    first_name text,
    last_name text,
    active boolean,
    email text
);

INSERT INTO customers VALUES(1, 'Petr', 'Arsentev', true, 'parsentev@bk.ru');
INSERT INTO customers VALUES(2, 'Andrey', 'Hincu', false, 'anincu@bk.ru');
INSERT INTO customers VALUES(3, 'Rail', 'Shamsemuhametov', true, 'rsham@bk.ru');
INSERT INTO customers VALUES(4, 'Elena', 'Kartashova', false, 'ekart@bk.ru');
INSERT INTO customers VALUES(5, 'Lana', 'Sergeeva', true, 'lserg@bk.ru');

SELECT * FROM customers
WHERE active = true;