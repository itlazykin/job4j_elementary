/*
GROUP BY позволяет разделить данные, которые возвращены с помощью SELECT на группы.
При этом для каждой из групп можно будет использовать агрегатные функции, например COUNT() для подсчета предметов в
каждой из групп. Как и в других запросах, с GROUP BY можно использовать WHERE. Важно уяснить правило - WHERE
обрабатывается после FROM и до GROUP BY. Таким образом, данные сначала фильтруются, а потом выполняется их группировка.
Синтаксис имеет следующий вид:

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

Напишите запрос, который вычислит общую сумму зарплаты по отделам, названия которых состоят только из двух символов.
Группировка будет по department.
*/

CREATE TABLE employees
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(50),
    department VARCHAR(50),
    salary     INT
);

INSERT INTO employees (name, department, salary)
VALUES ('John', 'HR', 58000),
       ('Jane', 'IT', 62000),
       ('Bob', 'Finance', 63000),
       ('Alice', 'IT', 60000),
       ('Charlie', 'HR', 59000);

SELECT department, SUM(salary) AS sum
FROM employees
WHERE department LIKE '__'
-- WHERE LENGTH(department) = 2  или так.
GROUP BY department