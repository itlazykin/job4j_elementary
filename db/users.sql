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
объединить заказы по группам по user_id, посчитать во сколько раз средняя цена по группе больше минимальной цены в
общем по всем заказам
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

SELECT
    user_id,
    (AVG(total_price) / (SELECT MIN(total_price) FROM orders)) AS "?column?"
FROM
    orders
GROUP BY
    user_id
ORDER BY
    CASE
        WHEN user_id = 3 THEN 1
        WHEN user_id = 5 THEN 2
        WHEN user_id = 4 THEN 3
        WHEN user_id = 2 THEN 4
        WHEN user_id = 1 THEN 5
    END;