/*
Подзапрос - это запрос, который помещен в другой запрос. Также можно встретить такое определение как внутренний запрос
или вложенный запрос. Подзапрос может быть полезен для извлечения данных, которые далее будут использованы основным
запросом в качестве условия при дальнейшей выборке данных. При этом подзапрос может быть размещен в SELECT. Обычно, это
используется когда мы хотим получить вычисление с агрегатной функцией. При этом агрегатная функция не будет применяться
к основному запросу. Основной синтаксис выглядит следующим образом:

SELECT
    столбец_1,
    столбец_2,
    ...,
    (
        SELECT
            агрегатная функция (столбец_2)
        FROM
            название_таблицы
        WHERE
            условие_выборки
    )
FROM
    название_таблицы;

Подзапросу можно присваивать псевдоним. Его можно использовать для ссылки на этот подзапрос или на любое поле в нем.
Основной принцип для размещения подзапроса в SELECT заключается в том, что подзапрос должен возвращать ровно один
результат. Поэтому он и используется с различными агрегатными функциями.

Для таблиц и данных ниже необходимо:
- получить список всех авиакомпаний и количество самолетов, которые они эксплуатируют
В качестве псевдонима для подзапроса используйте airplane_count
*/

CREATE TABLE airlines
(
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE airplanes
(
    id               SERIAL PRIMARY KEY,
    model            VARCHAR(100),
    manufacturer     VARCHAR(100),
    seating_capacity INTEGER,
    airline_id       INTEGER REFERENCES airlines (id)
);

INSERT INTO airlines (name, country)
VALUES ('American Airlines', 'United States'),
       ('Delta Air Lines', 'United States'),
       ('United Airlines', 'United States'),
       ('British Airways', 'United Kingdom'),
       ('Lufthansa', 'Germany'),
       ('Air France', 'France'),
       ('Emirates', 'United Arab Emirates');

INSERT INTO airplanes (model, manufacturer, seating_capacity, airline_id)
VALUES ('Boeing 737', 'Boeing', 150, 1),
       ('Boeing 777', 'Boeing', 350, 1),
       ('Airbus A320', 'Airbus', 180, 2),
       ('Airbus A330', 'Airbus', 300, 2),
       ('Boeing 787', 'Boeing', 250, 3),
       ('Airbus A380', 'Airbus', 500, 4),
       ('Boeing 747', 'Boeing', 400, 4),
       ('Airbus A350', 'Airbus', 325, 5),
       ('Airbus A320', 'Airbus', 180, 6),
       ('Airbus A340', 'Airbus', 300, 6),
       ('Boeing 777', 'Boeing', 350, 7),
       ('Boeing 787', 'Boeing', 250, 7),
       ('Boeing 737', 'Boeing', 150, 7),
       ('Airbus A380', 'Airbus', 500, 7),
       ('Boeing 747', 'Boeing', 400, 7),
       ('Boeing 737', 'Boeing', 150, 7),
       ('Boeing 777', 'Boeing', 350, 7),
       ('Airbus A320', 'Airbus', 180, 7),
       ('Boeing 787', 'Boeing', 250, 7),
       ('Airbus A330', 'Airbus', 300, 7),
       ('Boeing 747', 'Boeing', 400, 7),
       ('Airbus A380', 'Airbus', 500, 7);

SELECT al.name,
    (
    SELECT COUNT(model)
    FROM airplanes AS ap
    WHERE ap.airline_id = al.id
    ) AS airplane_count
FROM airlines AS al


