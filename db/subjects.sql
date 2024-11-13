/*
Для того чтобы в выборку попали данные из нескольких столбцов, при этом уникальность учитывалась только лишь
в части из них - используется предложение DISTINCT. Синтаксис выглядит следующим образом:

SELECT DISTINCT (имена_столбцов_через_запятую) имена_столбцов_через_запятую_отражаем_в_выборке FROM название_таблицы;

Хорошей практикой является всегда использовать ORDER BY вместе с DISTINCT чтобы сделать результирующий набор предсказуемый.

Для представленной ниже схемы subjects напишите запрос, которые выполнит выборку уникальных строк по столбцу name,
в выборку должны попасть данные из столбцов id, name и grade.
При этом результирующая выборка должна быть отсортирована по полю name по убыванию.
*/

CREATE TABLE subjects(
    id int not null primary key,
    name text,
    grade int,
    start_date timestamp
);

INSERT INTO subjects VALUES(1, 'Math', 75, current_date);
INSERT INTO subjects VALUES(2, 'English', 85, current_date);
INSERT INTO subjects VALUES(3, 'Math', 50, current_date);
INSERT INTO subjects VALUES(4, 'Computer Science', 95, current_date);
INSERT INTO subjects VALUES(5, 'English', 75, current_date);
INSERT INTO subjects VALUES(6, 'Computer Science', 85, current_date);

SELECT DISTINCT (name) id, name, grade FROM subjects ORDER BY name DESC;