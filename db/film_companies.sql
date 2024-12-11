/*
GROUP BY позволяет разделить данные, которые возвращены с помощью SELECT на группы. При этом для каждой из групп можно
будет использовать агрегатные функции, например COUNT() для подсчета предметов в каждой из групп.Вместе с GROUP BY
можно использовать HAVING. Этот оператор позволяет указать какие группы будут включены в выходной результат. Т.е. просто
 выполняют фильтрацию групп. Но очень важно усвоить разницу между WHERE и HAVING - в отличие от WHERE оператор HAVING
 будет выполняться после группировки данных. Т.е. WHERE фильтрует строки, а HAVING - группы после их группировки.
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

Необходимо вывести средний бюджет фильмов, выпущенных каждой кинокомпанией, у которых есть более 3 режиссеров и средний
бюджет превышает 5 миллионов. В результатах запроса должно быть отражено название компании и средний бюджет.
Группировка будет по названию кинокомпании
*/

CREATE TABLE film_companies
(
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(255) NOT NULL,
    country       VARCHAR(50),
    founding_year INTEGER
);

CREATE TABLE directors
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    birth_date  DATE,
    nationality VARCHAR(50)
);

CREATE TABLE movies
(
    id           SERIAL PRIMARY KEY,
    title        VARCHAR(255) NOT NULL,
    release_year INTEGER,
    duration     INTEGER,
    budget       NUMERIC(15, 2),
    company_id   INTEGER REFERENCES film_companies (id),
    director_id  INTEGER REFERENCES directors (id)
);

INSERT INTO film_companies (name, country, founding_year)
VALUES ('Company A', 'USA', 1990),
       ('Company B', 'UK', 1985),
       ('Company C', 'Canada', 2000);

INSERT INTO directors (name, birth_date, nationality)
VALUES ('Director X', '1970-05-15', 'USA'),
       ('Director Y', '1982-08-22', 'UK'),
       ('Director Z', '1965-12-10', 'Canada'),
       ('Director W', '1978-03-30', 'USA');

INSERT INTO movies (title, release_year, duration, budget, company_id, director_id)
VALUES ('Movie 1', 2022, 120, 5000000, 1, 1),
       ('Movie 2', 2021, 105, 3000000, 2, 2),
       ('Movie 3', 2020, 130, 8000000, 3, 3),
       ('Movie 4', 2019, 110, 4000000, 1, 4),
       ('Movie 5', 2018, 95, 2000000, 2, 1),
       ('Movie 6', 2017, 115, 6000000, 3, 2),
       ('Movie 7', 2016, 125, 7000000, 1, 3),
       ('Movie 8', 2015, 100, 3500000, 2, 4),
       ('Movie 9', 2014, 90, 2500000, 3, 1),
       ('Movie 10', 2013, 135, 9000000, 1, 2),
       ('Movie 11', 2012, 80, 1800000, 2, 3),
       ('Movie 12', 2011, 140, 7500000, 3, 4),
       ('Movie 13', 2010, 105, 3200000, 1, 1),
       ('Movie 14', 2009, 125, 5500000, 2, 2),
       ('Movie 15', 2008, 110, 4000000, 3, 3);

SELECT fc.name AS name, AVG(m.budget) AS avg
FROM movies m
JOIN film_companies fc ON m.company_id = fc.id
WHERE  m.director_id IN (
        SELECT director_id
        FROM movies
        GROUP BY director_id
        HAVING COUNT(*) > 3
    )
GROUP BY fc.name
HAVING AVG(m.budget) > 5000000;