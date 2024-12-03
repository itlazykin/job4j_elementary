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

Необходимо учесть - любой столбец, который указан в SELECT (столбец, который хранит результат вычисления агрегатных
функций, не считается), должен быть указан после GROUP BY.

Напишите запрос, который подсчитает количество студентов на каждом факультете.
Используйте таблицу "Студенты" с полями: студент, факультет. Группировка будет по faculty.
*/

CREATE TABLE students
(
    id INT,
    faculty    VARCHAR(50)
);

INSERT INTO Students
VALUES (1, 'Engineering'),
       (2, 'Arts'),
       (3, 'Engineering'),
       (4, 'Science'),
       (5, 'Arts'),
       (6, 'Engineering');

SELECT
    faculty,
    COUNT(id) AS count
FROM
    students
GROUP BY faculty