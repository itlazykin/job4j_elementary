/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим NATURAL JOIN.
NATURAL JOIN – это соединение, которое создает неявное соединение на основе тех столбцов в соединяемых таблицах
которые имеют одинаковые имена.
Ниже представлен синтаксис natural join в Postgres:

SELECT список_столбцов
FROM table_1
NATURAL [INNER, LEFT, RIGHT] JOIN table_2;

Естественным соединением может быть INNER JOIN, LEFT или RIGHT JOIN. Если не указать тип объединения явно,
то PostgreSQL будет использовать INNER JOIN.

Для представленной ниже схемы выполните запрос с использованием NATURAL JOIN. Это должен быть LEFT JOIN.
В результатах отражаем значения столбцов model, volume, power.
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

SELECT model, volume, power FROM cars
NATURAL LEFT JOIN engines
