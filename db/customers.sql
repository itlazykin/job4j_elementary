/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

Синтаксис имеет следующий вид:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE условие ORDER BY условие_сортировки

ORDER BY в данном случае опциональное предложение, указывать необязательно.
В итоге запрос возвращает только те строки, которые удовлетворяют условию в WHERE.
Для формирования условия в WHERE предложении используются операторы сравнения: >, <, >=, <=.

Для представленной ниже схемы напишите запрос, который выполнит выборку всех записей,
которые удовлетворяют условию - длина строки в столбце first_name должна быть строго больше 4.
Для того чтобы получить длину строки используйте функцию length(название_столбца)
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
WHERE length(first_name) > 4;