/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

При этом условия можно комбинировать и проверять несколько условий. Для этого используется логическая операция AND (И).
Синтаксис имеет следующий вид:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE условие1 AND условие2 AND условие3;

В итоге запрос вернет только те строки, которые удовлетворяют всем условиям, которые объединены с помощью AND.

Для представленной ниже схемы customers напишите запрос, который выполнит выборку всех записей,
удовлетворяющих условиям - длина строки в столбце first_name должна быть больше или равна 5
И значение в столбце active равно false.
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
WHERE LENGTH(first_name) >= 5 AND active = false;