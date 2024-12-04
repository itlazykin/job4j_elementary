/*
GROUP BY позволяет разделить данные, которые возвращены с помощью SELECT на группы.
При этом для каждой из групп можно будет использовать агрегатные функции, например COUNT() для подсчета предметов в
каждой из групп. Синтаксис имеет следующий вид:

SELECT
    столбец_1,
    столбец_2,
    ...,
    aggregate_function(столбец_3)
FROM
    название_таблицы
GROUP BY
    столбец_1,
    столбец_2,
    ...;

Необходимо учесть - любой столбец, который указан в SELECT
(столбец, который хранит результат вычисления агрегатных функций, не считается), должен быть указан после GROUP BY.

Создайте запрос, который вычислит общий доход от продаж для каждой категории товаров. Используйте таблицы:
- "Продукты" с полями: товар, категория, цена. - "Продажи" с полями: продажа, id товара, количество.
Группировка будет по category.
*/

CREATE TABLE products
(
    id INT PRIMARY KEY,
    category   VARCHAR(50),
    price      INT
);

CREATE TABLE sales
(
    sale_id    INT PRIMARY KEY,
    product_id INT references products(id),
    quantity   INT
);

INSERT INTO products
VALUES (1, 'Electronics', 500),
       (2, 'Clothing', 30),
       (3, 'Electronics', 700),
       (4, 'Books', 20);

INSERT INTO sales
VALUES (1, 1, 10),
       (2, 2, 5),
       (3, 3, 8),
       (4, 4, 12);

SELECT
    p.category AS category,
    SUM(p.price * s.quantity) AS sum
FROM
    products p
JOIN
    sales s
ON
    p.id = s.product_id
GROUP BY
    p.category;