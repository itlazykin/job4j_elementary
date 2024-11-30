/*
 Для того чтобы получить данные из нескольких таблиц, используется JOIN. При этом бывают не только внутренние,
 но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим FULL OUTER JOIN.
 Например, мы хотим выполнить полное внешнее соединение двух таблиц: А и В. Синтаксис будет иметь вид:

 SELECT * FROM A
 FULL OUTER JOIN B on A.id = B.id;

 Полное внешнее соединение объединяет результаты как левого, так и правого соединения.

 Для представленной ниже схемы напишите запрос с использованием FULL OUTER JOIN.
 Результирующий набор должен включать всех сотрудников, принадлежащих отделу, и всех отделов, в которых есть сотрудник.
 Кроме того, результат должен включать каждого сотрудника, не принадлежащего отделу, и каждый отдел,
 в котором нет сотрудников. В результат отражаем значения столбцов name из каждой таблицы.
 Левая таблица – employees, правая – departments.
 */

CREATE TABLE departments (
    id int primary key,
    name text not null
);

CREATE TABLE employees (
    id int primary key,
    name text,
    department_id int references departments(id)
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

SELECT e.name, d.name
FROM employees AS e
FULL OUTER JOIN departments AS d ON d.id = department_id;
