/*
Ваша задача - написать запрос, который выполнит выборку всех записей из таблицы subjects,
при этом в выборке должны быть представлены данные только 2-х полей таблицы - name и start_date.
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

select name, start_date from subjects