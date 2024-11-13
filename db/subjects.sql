/*
Предложение DISTINCT используется для удаления дубликатов из набора результатов выборки.
Предложение DISTINCT можно использовать только с операторами SELECT. Синтаксис следующий:

SELECT DISTINCT имена_столбцов_через_запятую FROM название_таблицы;

Если в предложении DISTINCT указаны несколько столбцов для выборки,
то запрос будет получать уникальные комбинации для перечисленных столбцов.
При этом предложение DISTINCT не игнорирует значения null. Таким образом,
при использовании DISTINCT в результатах выборки будет включать NULL в качестве отдельного значения.

Для представленной ниже схемы products напишите запрос, который выберет только уникальные записи по полю name и grade.
*/

CREATE TABLE subjects(
    id int not null primary key,
    name text,
    grade int,
    start_date timestamp
);

INSERT INTO subjects VALUES(1, 'Math', 75, current_date);
INSERT INTO subjects VALUES(2, 'Math', null, current_date);
INSERT INTO subjects VALUES(3, 'Math', 75, current_date);
INSERT INTO subjects VALUES(4, 'Math', 85, current_date);
INSERT INTO subjects VALUES(5, 'Math', null, current_date);

SELECT DISTINCT name, grade FROM subjects;