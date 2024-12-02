/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим NATURAL JOIN.
NATURAL JOIN – это соединение, которое создает неявное соединение на основе тех столбцов в соединяемых таблицах
которые имеют одинаковые имена.
Ниже представлен синтаксис natural join в Postgres:

SELECT список_столбцов
FROM table_1
NATURAL [INNER, LEFT, RIGHT] JOIN table_2;

То, что указано в квадратных скобках не является обязательным параметром. При этом, если не уточнять тип запроса,
то по умолчанию будет использован INNER JOIN.
Если вместо списка выбираемых столбцов указывать звездочку (*), то результат будет содержать столбцы:
- значения общих столбцов. Естественно в единственном экземпляре.
- каждый из столбцов из обеих таблиц, который не является общим столбцов для каждой из таблиц.

Для представленной ниже схемы выполните запрос с использованием NATURAL JOIN. Это должен быть RIGHT JOIN. В результатах отражаем значения всех столбцов – используйте оператор звездочки (*).
*/

CREATE TABLE cars (
    car_id int primary key,
    model text
);

CREATE TABLE engines (
    number int primary key,
    volume decimal,
    power int,
    car_id int references cars(car_id)
);

INSERT INTO cars VALUES (1, 'Toyota Camry');
INSERT INTO cars VALUES (2, 'Kia Rio');
INSERT INTO cars VALUES (3, 'Audi A6');
INSERT INTO cars VALUES (4, 'Renault Sandero');

INSERT INTO engines VALUES (1234, 2.5, 181, 1);
INSERT INTO engines VALUES (1479, 1.6, 123, null);
INSERT INTO engines VALUES (5678, 1.2, 75, 4);
INSERT INTO engines VALUES (5072, 3.0, 231, null);

SELECT * FROM cars
NATURAL RIGHT JOIN engines
