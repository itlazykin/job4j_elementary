/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

Если мы хотим сопоставить строку с любой строкой в списке мы можем использовать оператор IN. Синтаксис будет следующим:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE столбец_для_проверки IN (строка1, строка2, и т.д.);

Если значение в проверяемом столбце совпадет с любой из строк в операторе IN,
то такая строка попадет в результаты выборки.

Для представленной ниже схемы напишите запрос, который вернет только те строки,
у которых в столбце first_name будут строки Ann, Anne, Annie.
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
WHERE first_name IN ('Ann' , 'Anne', 'Annie');