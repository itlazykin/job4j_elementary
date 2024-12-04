/*
GROUP BY позволяет разделить данные, которые возвращены с помощью SELECT на группы.
При этом для каждой из групп можно будет использовать агрегатные функции, например COUNT() для подсчета предметов в каждой из групп.

Как и в других запросах, с GROUP BY можно использовать WHERE. Важно уяснить правило - WHERE обрабатывается после FROM и до GROUP BY. Таким образом, данные сначала фильтруются, а потом выполняется их группировка.

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

Напишите запрос, который выведет топ-3 студентов по среднему баллу, учитывая только тех, кто получил оценки выше 80.
Группировка будет по name.
*/

CREATE TABLE grades
(
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(50),
    subject VARCHAR(50),
    grade   INT
);

INSERT INTO grades (name, subject, grade)
VALUES ('Alice', 'Math', 85),
       ('Jack', 'Math', 70),
       ('Bob', 'Math', 78),
       ('Alice', 'Physics', 90),
       ('Bob', 'Physics', 88),
       ('Charlie', 'Math', 92),
       ('Charlie', 'Physics', 95),
       ('Jack', 'Physics', 84);

SELECT
    name,
    AVG(grade) AS average
FROM
    grades
WHERE
    grade > 80
GROUP BY
    name
ORDER BY
    average DESC
LIMIT 3;