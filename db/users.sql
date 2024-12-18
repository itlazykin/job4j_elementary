/*
Подзапрос - это запрос, который помещен в другой запрос. Также можно встретить такое определение как внутренний запрос
или вложенный запрос. Подзапрос может быть полезен для извлечения данных, которые далее будут использованы основным
запросом в качестве условия при дальнейшей выборке данных. При этом подзапрос может быть размещен в SELECT. Обычно, это
используется когда мы хотим получить вычисление с агрегатной функцией. При этом агрегатная функция не будет применяться
к основному запросу. Основной синтаксис выглядит следующим образом:

SELECT
    столбец_1,
    столбец_2,
    ...,
    (
        SELECT
            агрегатная функция (столбец_2)
        FROM
            название_таблицы
        WHERE
            условие_выборки
    )
FROM
    название_таблицы;

Подзапросу можно присваивать псевдоним. Его можно использовать для ссылки на этот подзапрос или на любое поле в нем.
Основной принцип для размещения подзапроса в SELECT заключается в том, что подзапрос должен возвращать ровно один
результат. Поэтому он и используется с различными агрегатными функциями.

Для таблиц и данных ниже необходимо:
- получить список товаров и их цен вместе с общим количеством проданных единиц каждого товара
В качестве псевдонима для подзапроса используйте total_sold.
*/

CREATE TABLE users
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age  INT
);

CREATE TABLE orders
(
    id          SERIAL PRIMARY KEY,
    user_id     INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE products
(
    id           SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price        DECIMAL(10, 2)
);

CREATE TABLE order_items
(
    id         SERIAL PRIMARY KEY,
    order_id   INT,
    product_id INT,
    quantity   INT,
    price      DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (product_id) REFERENCES products (id)
);

INSERT INTO users (name, age)
VALUES ('Alice', 25),
       ('Bob', 30),
       ('Charlie', 35),
       ('David', 40),
       ('Emma', 22);

INSERT INTO orders (user_id, total_price)
VALUES (1, 100.00),
       (2, 75.50),
       (3, 200.25),
       (4, 150.75),
       (5, 50.20),
       (1, 120.00),
       (2, 90.80),
       (3, 180.60),
       (4, 210.40),
       (4, 175.30),
       (5, 95.25),
       (1, 80.30),
       (2, 65.50),
       (3, 150.00),
       (4, 100.75),
       (5, 70.90);

INSERT INTO products (product_name, price)
VALUES ('Товар 1', 10.00),
       ('Товар 2', 15.50),
       ('Товар 3', 20.25),
       ('Товар 4', 25.75),
       ('Товар 5', 30.20);

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (1, 1, 2, 20.00),
       (2, 2, 1, 15.50),
       (3, 3, 3, 60.75),
       (4, 4, 2, 51.50),
       (5, 5, 1, 30.20),
       (6, 1, 1, 40.00),
       (7, 2, 4, 40.80),
       (8, 3, 2, 36.60),
       (9, 4, 3, 84.30),
       (10, 5, 1, 45.25),
       (11, 1, 2, 60.60),
       (12, 2, 1, 65.50),
       (13, 3, 3, 150.00),
       (14, 4, 2, 100.75),
       (15, 5, 1, 70.90);

SELECT p.product_name,p.price,
	(
	SELECT SUM(quantity)
	FROM order_items AS oi
	WHERE oi.product_id = p.id) AS total_sold
FROM products AS p