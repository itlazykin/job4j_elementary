/*
GROUP BY позволяет разделить данные, которые возвращены с помощью SELECT на группы.
При этом для каждой из групп можно будет использовать агрегатные функции,
например COUNT() для подсчета предметов в каждой из групп. Как и в других запросах, с GROUP BY можно использовать WHERE.
Важно уяснить правило - WHERE обрабатывается после FROM и до GROUP BY.
Таким образом, данные сначала фильтруются, а потом выполняется их группировка. Синтаксис имеет следующий вид:

SELECT
    столбец_1,
    столбец_2,
    ...,
    aggregate_function(столбец_3)
FROM
    название_таблицы
WHERE
    условие выборки
GROUP BY
    столбец_1,
    столбец_2,
    ...;

Необходимо учесть - любой столбец, который указан в SELECT
(столбец, который хранит результат вычисления агрегатных функций, не считается), должен быть указан после GROUP BY.

Создайте запрос, который подсчитает суммарные продажи по категориям товаров за месяц с номером 2.
Группировка будет по category.
*/

CREATE TABLE sales
(
    id           SERIAL PRIMARY KEY,
    category     VARCHAR(50),
    month_number INT,
    amount       INT
);

INSERT INTO sales (category, month_number, amount)
VALUES ('Electronics', 2, 1000),
       ('Clothing', 2, 500),
       ('Electronics', 1, 800),
       ('Books', 3, 300),
       ('Electronics', 1, 1200);

SELECT category, SUM(amount) AS sum
FROM sales
WHERE month_number = 2
GROUP BY category