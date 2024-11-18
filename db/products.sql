/*
Функция COUNT() представляет собой агрегатную функцию, которая позволяет получить количество строк,
удовлетворяющих определенному условию запроса. К примеру, запрос можно выполнить следующим образом:

SELECT COUNT(DISTINCT имя_столбца) FROM название_таблицы;

В такой форме COUNT(DISTINCT имя_столбца) возвращает количество уникальных ненулевых значений в столбце,
который мы указываем в COUNT.

Для представленной ниже схемы products, который вернет количество ненулевых уникальных строк по столбцу name.
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
INSERT INTO products VALUES(5, 'bread', 50, 10);
INSERT INTO products VALUES(6, 'cheese', 250, 8);
INSERT INTO products VALUES(7, 'milk', 75, 15);
INSERT INTO products VALUES(8, 'bread', 50, 10);
INSERT INTO products VALUES(9, 'cheese', 250, 8);
INSERT INTO products VALUES(10, 'bread', 50, 10);

SELECT COUNT(DISTINCT name) FROM products;
