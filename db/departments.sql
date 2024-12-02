/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим NATURAL JOIN.
NATURAL JOIN – это соединение, которое создает неявное соединение на основе тех столбцов в соединяемых таблицах которые
 имеют одинаковые имена.
Например, есть таблицы:

CREATE TABLE categories (
    category_id int PRIMARY KEY,
    category_name text NOT NULL
);

CREATE TABLE products (
    product_id int PRIMARY KEY,
    product_name text,
    category_id int references categories(category_id) NOT NULL
);

В данном случае category_id в таблице products – это внешний ключ, который ссылается на первичный ключ таблицы
categories. Мы видим, что названия столбцов совпадают и, соответственно, его мы будем использовать для внешнего
соединения.

Простейший вариант использования NATURAL JOIN будет иметь вид:

SELECT *
FROM categories
NATURAL JOIN products;

Удобство NATURAL JOIN заключается в том, что нам не нужно указывать логическое выражение для соединения,
поскольку в данном случае используется неявное предложение соединения, которое основывается на совпадении
значений общего столбца в таблицах.

Для представленной ниже схемы напишите запрос с использованием NATURAL JOIN. Это должен быть INNER JOIN.
Должны быть в результатах отражены значения всех столбцов, используйте (*).
*/

CREATE TABLE departments (
    department_id int primary key,
    name text not null
);

CREATE TABLE employees (
    id int primary key,
    employee_name text,
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