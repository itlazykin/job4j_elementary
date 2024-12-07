/*
GROUP BY позволяет разделить данные, которые возвращены с помощью SELECT на группы. При этом для каждой из групп можно
будет использовать агрегатные функции, например COUNT() для подсчета предметов в каждой из групп. Вместе с GROUP BY
можно использовать HAVING. Этот оператор позволяет указать какие группы будут включены в выходной результат. Т.е. просто
выполняют фильтрацию групп. Но очень важно усвоить разницу между WHERE и HAVING - в отличие от WHERE оператор HAVING
будет выполняться после группировки данных. Т.е. WHERE фильтрует строки, а HAVING - группы после их группировки.
Синтаксис имеет следующий вид:

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
    ...
HAVING
    условие_фильтрации_групп;

Необходимо учесть - любой столбец, который указан в SELECT
(столбец, который хранит результат вычисления агрегатных функций, не считается), должен быть указан после GROUP BY.

Вывести идентификатор отдела (department_id), общее число сотрудников и минимальный возраст сотрудников в каждом отделе.
Использовать GROUP BY и HAVING для отображения только тех отделов, у которых количество сотрудников больше 3.
Группировка будет по department_id.
*/

CREATE TABLE employees
(
    id            INT PRIMARY KEY,
    name          VARCHAR(255),
    department_id INT,
    age           INT
);

INSERT INTO employees
VALUES (1, 'John Doe', 1, 25),
       (2, 'Jane Smith', 1, 28),
       (3, 'Bob Johnson', 2, 32),
       (4, 'Alice Brown', 2, 29),
       (5, 'Charlie White', 1, 26),
       (6, 'David Black', 3, 31),
       (7, 'Eva Green', 3, 27),
       (8, 'Frank Miller', 2, 30),
       (9, 'Grace Davis', 1, 29),
       (10, 'Henry Jones', 3, 33);

SELECT department_id, COUNT(department_id) AS count, MIN(age) AS min
FROM employees
GROUP BY department_id
HAVING COUNT(department_id) > 3