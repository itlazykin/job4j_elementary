/*
Предложение DISTINCT используется для удаления дубликатов из набора результатов выборки.
Предложение DISTINCT можно использовать только с операторами SELECT. Синтаксис следующий:

SELECT DISTINCT имена_столбцов_через_запятую FROM название_таблицы;

Если в предложении DISTINCT указан только один столбец для выборки, то запрос вернет уникальные значения для этого столбца.

Для представленной ниже схемы accounts напишите запрос, который выберет только уникальные записи по полю name.

Для представленной ниже схемы products напишите запрос, который выберет только уникальные записи по полю name и price.
Результирующая выборка должна быть отсортирована по полю price по убыванию.
*/

CREATE TABLE products(
    id int not null primary key,
    name text,
    price int,
    count int
);

INSERT INTO products VALUES(1, 'bread', 50, 10);
INSERT INTO products VALUES(2, 'cheese', 250, 8);
INSERT INTO products VALUES(3, 'milk', 75, 15);
INSERT INTO products VALUES(4, 'butter', 115, 7);
INSERT INTO products VALUES(5, 'sugar', 105, 30);

SELECT DISTINCT name, price FROM products ORDER BY price DESC;
