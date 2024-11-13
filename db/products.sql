/*
Ваша задача - написать запрос, который выполнит выборку всех записей из таблицы products,
 при этом в выборке должны быть представлены данные только двух полей таблицы - id и price.
  Схема таблицы представлена ниже.
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

select id, price from products