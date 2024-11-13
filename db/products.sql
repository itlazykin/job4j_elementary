/*
Чтобы выбрать все записи из таблицы Базы данных используется следующий синтаксис:

SELECT названия_полей_в_таблице_через_запятую FROM название_таблицы;

при этом названия полей можно перечислять в произвольном порядке, после названия последнего поля запятая не ставится.

Ваша задача - написать запрос, который выполнит выборку всех записей из таблицы products,
при этом в выборке должны быть представлены данные всех полей таблицы. Схема таблицы представлена ниже.
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

select * from products