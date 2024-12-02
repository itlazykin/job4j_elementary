/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим NATURAL JOIN.
NATURAL JOIN – это соединение, которое создает неявное соединение на основе тех столбцов в соединяемых таблицах
которые имеют одинаковые имена.
Например, есть таблицы:

CREATE TABLE departments (
    department_id int primary key,
    name text not null
);

CREATE TABLE employees (
    id int primary key,
    employee_name text,
    department_id int references departments(department_id)
);

В данном случае department_id в таблице employees – это внешний ключ, который ссылается на первичный ключ таблицы
departments. Мы видим, что названия столбцов совпадают и, соответственно, его мы будем использовать для
внешнего соединения.
Тем не менее, следует избегать использования NATURAL JOIN в том случае, если это возможно, поскольку иногда это может
привести к неожиданному результату. Например, представленные выше таблицы немного изменим:

CREATE TABLE departments (
    department_id int primary key,
    name text not null
);

CREATE TABLE employees (
    id int primary key,
    name text,
    department_id int references departments(department_id)
);

Как и ранее обе таблицы имеют один и тот же столбец department_id, следственно мы можем использовать NATURAL JOIN.
Однако следующий запрос:

SELECT *
FROM departments
NATURAL JOIN employees;

Вернет пустой набор результатов. Связано это с тем, что в таблицах имеется одинаковый столбец name,
который и будет использован для выполнения NATURAL JOIN.

Для представленной ниже схемы напишите запрос с использованием NATURAL JOIN. Это должен быть INNER JOIN.
Должны быть в результатах отражены значения всех столбцов, используйте (*).
*/

CREATE TABLE departments (
    department_id int primary key,
    name text not null
);

CREATE TABLE employees (
    id int primary key,
    name text,
    department_id int references departments(department_id)
);

INSERT INTO departments VALUES (1, 'Sales'),
                               (2, 'Marketing'),
                               (3, 'HR'),
                               (4, 'IT'),
                               (5, 'Production');

INSERT INTO employees VALUES (1, 'Ivan Ivanov', 1),
                             (2, 'Petr Petrov', 1),
                             (3, 'Olga Sergeeva', 2),
                             (4, 'Michael Shnurov', 3),
                             (5, 'Irina Trubkina', 4),
                             (6, 'Evgenii Shtukov', null);

SELECT * FROM departments
NATURAL INNER JOIN employees