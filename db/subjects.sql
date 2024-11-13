/*
Для представленной ниже схемы таблицы subjects необходимо написать запрос, который выполнит выборку всех записей.
Выбирать будем только данные столбцов name и grade -
при этом для name используйте псевдоним name_subject, а для grade - total_grade.
*/

CREATE TABLE subjects(
    id int not null primary key,
    name text,
    grade int,
    start_date timestamp
);

INSERT INTO subjects VALUES(1, 'Math', 50, current_date);
INSERT INTO subjects VALUES(2, 'English', 75, current_date);
INSERT INTO subjects VALUES(3, 'Sociology', 65, current_date);
INSERT INTO subjects VALUES(4, 'Economic', 60, current_date);
INSERT INTO subjects VALUES(5, 'Computer Science', 95, current_date);

select name AS name_subject, grade AS total_grade from subjects