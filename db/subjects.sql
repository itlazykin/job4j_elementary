/*
Функция COUNT() представляет собой агрегатную функцию, которая позволяет получить количество строк,
удовлетворяющих определенному условию запроса. К примеру, запрос можно выполнить следующим образом:

SELECT COUNT(имя_столбца) FROM название_таблицы;

По аналогии с COUNT(*), функция COUNT(имя_столбца) вернет количество строк, возвращенных SELECT-ом.
Однако он не учитывает null значения в столбце который мы передаем в COUNT.

Для представленной ниже схемы subjects выполните запрос с использованием COUNT, по столбцу name.
В итоге получим количество строк, в которых в поле name могут быть null.
*/

CREATE TABLE subjects(
    id int not null primary key,
    name text,
    grade int,
    start_date timestamp
);

INSERT INTO subjects VALUES(1, 'Math', 50, current_date);
INSERT INTO subjects VALUES(2, null, 75, current_date);
INSERT INTO subjects VALUES(3, 'Sociology', 65, current_date);
INSERT INTO subjects VALUES(4, null, 60, current_date);
INSERT INTO subjects VALUES(5, 'Computer Science', 95, current_date);
INSERT INTO subjects VALUES(6, null, 50, current_date);
INSERT INTO subjects VALUES(7, 'English', 75, current_date);
INSERT INTO subjects VALUES(8, null, 65, current_date);
INSERT INTO subjects VALUES(9, 'Economics', 60, current_date);
INSERT INTO subjects VALUES(10, null, 95, current_date);

SELECT COUNT(name) FROM subjects;