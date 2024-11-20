/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

Если мы хотим сопоставить какое-то значение в столбце с любым значением в списке мы можем использовать оператор IN.
Синтаксис будет следующим:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE столбец_для_проверки IN (значение1, значение2, и т.д.);

Если значение в проверяемом столбце совпадет с любой из строк в операторе IN,
то такая строка попадет в результаты выборки.

Для представленной ниже схемы напишите запрос, который вернет только те строки,
у которых в столбце grade будет значение 50, 60 или 70.
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
INSERT INTO subjects VALUES(4, 'Economics', 60, current_date);
INSERT INTO subjects VALUES(5, 'Computer Science', 70, current_date);

SELECT * FROM subjects
WHERE grade IN (50, 60, 70);