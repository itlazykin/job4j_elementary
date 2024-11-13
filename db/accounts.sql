/*
Предложение DISTINCT используется для удаления дубликатов из набора результатов выборки.
Предложение DISTINCT можно использовать только с операторами SELECT. Синтаксис следующий:

SELECT DISTINCT имена_столбцов_через_запятую FROM название_таблицы;

Если в предложении DISTINCT указан только один столбец для выборки, то запрос вернет уникальные значения для этого столбца.

Для представленной ниже схемы accounts напишите запрос, который выберет только уникальные записи по полю name.
*/

CREATE TABLE accounts(
    id int not null primary key,
    name text,
    login text,
    password text
);

INSERT INTO accounts VALUES(1, 'Petr Arsentev', 'parsentev', '1234');
INSERT INTO accounts VALUES(2, 'Andrey Hincu', 'anincu', '4321');
INSERT INTO accounts VALUES(3, 'Rail Shamsemuhametov', 'rsham', '5678');
INSERT INTO accounts VALUES(4, 'Elena Kartashova', 'ekart', '8765');
INSERT INTO accounts VALUES(5, 'Lana Sergeeva', 'lserg', '2156');

SELECT DISTINCT name FROM accounts;
