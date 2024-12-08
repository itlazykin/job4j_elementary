/*
GROUP BY позволяет разделить данные, которые возвращены с помощью SELECT на группы. При этом для каждой из групп можно
будет использовать агрегатные функции, например COUNT() для подсчета предметов в каждой из групп. Вместе с GROUP BY
можно использовать HAVING. Этот оператор позволяет указать какие группы будут включены в выходной результат. Т.е.
просто выполняют фильтрацию групп. Но очень важно усвоить разницу между WHERE и HAVING - в отличие от WHERE оператор
HAVING будет выполняться после группировки данных. Т.е. WHERE фильтрует строки, а HAVING - группы после их группировки.
В одном запросе одновременно могут использоваться и WHERE и HAVING. Главное не забывать про порядок выполнения этих
операторов. Синтаксис имеет следующий вид:

 SELECT
     столбец_1,
     столбец_2,
     ...,
     aggregate_function(столбец_3)
 FROM
     название_таблицы
 WHERE
     условие_выборки
 GROUP BY
     столбец_1,
     столбец_2,
     ...
 HAVING
     условие_фильтрации_групп;

 Необходимо учесть - любой столбец, который указан в SELECT
 (столбец, который хранит результат вычисления агрегатных функций, не считается), должен быть указан после GROUP BY.

Определите среднюю продолжительность полетов для каждого производителя самолетов, в результаты должны попасть только те
производители у кого средняя продолжительность больше 4. Необходимо вывести производителя и среднюю продолжительность
полета. Группировка будет по названию производителя самолета.
*/

CREATE TABLE airlines
(
    id           INT PRIMARY KEY,
    name         VARCHAR(255),
    country      VARCHAR(255),
    headquarters VARCHAR(255)
);

CREATE TABLE airplanes
(
    id               INT PRIMARY KEY,
    model            VARCHAR(255),
    manufacturer     VARCHAR(255),
    seating_capacity INT
);

CREATE TABLE flights
(
    id              INT PRIMARY KEY,
    airline_id      INT REFERENCES airlines (id),
    airplane_id     INT REFERENCES airplanes (id),
    departure_date  DATE,
    flight_duration DECIMAL(5, 2)
);

INSERT INTO airlines (id, name, country, headquarters)
VALUES (1, 'Lufthansa', 'Germany', 'Cologne'),
       (2, 'Delta Air Lines', 'USA', 'Atlanta'),
       (3, 'Emirates', 'UAE', 'Dubai'),
       (4, 'Air France', 'France', 'Paris'),
       (5, 'Singapore Airlines', 'Singapore', 'Singapore');

INSERT INTO airplanes (id, model, manufacturer, seating_capacity)
VALUES (1, '737', 'Boeing', 150),
       (2, 'A320', 'Airbus', 170),
       (3, '777', 'Boeing', 300),
       (4, 'A380', 'Airbus', 555),
       (5, '747', 'Boeing', 416),
       (6, 'E190', 'Embraer', 100),
       (7, 'A350', 'Airbus', 440),
       (8, 'CRJ900', 'Bombardier', 90),
       (9, 'MD-11', 'McDonnell Douglas', 290),
       (10, '72', 'ATR', 70);

INSERT INTO flights (id, airline_id, airplane_id, departure_date, flight_duration)
VALUES (1, 1, 1, '2023-01-01', 2.5),
       (2, 2, 3, '2023-01-02', 3.0),
       (3, 3, 4, '2023-01-03', 8.5),
       (4, 4, 2, '2023-01-04', 2.0),
       (5, 5, 5, '2023-01-05', 7.5),
       (6, 1, 6, '2023-01-06', 1.5),
       (7, 2, 7, '2023-01-07', 4.0),
       (8, 3, 8, '2023-01-08', 6.5),
       (9, 4, 9, '2023-01-09', 5.0),
       (10, 5, 10, '2023-01-10', 3.5),
       (11, 1, 1, '2023-01-11', 2.0),
       (12, 2, 2, '2023-01-12', 1.0),
       (13, 3, 3, '2023-01-13', 4.5),
       (14, 4, 4, '2023-01-14', 2.5),
       (15, 5, 5, '2023-01-15', 6.0),
       (16, 3, 3, '2023-03-16', 4.5);

SELECT
    ap.manufacturer AS manufacturer,
    AVG(f.flight_duration) AS avg
FROM
    flights f
JOIN
    airplanes ap
ON
    f.airplane_id = ap.id
GROUP BY
    ap.manufacturer
HAVING
    AVG(f.flight_duration) > 4;
