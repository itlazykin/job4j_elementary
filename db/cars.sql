/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN.
При этом бывают не только внутренние, но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим RIGHT JOIN.
Например, у нас есть следующие таблицы:

CREATE TABLE films (
    film_id int  PRIMARY KEY,
    title text
);

CREATE TABLE film_reviews (
    review_id int PRIMARY KEY,
    review text,
    film_id int
);

Т.е. у фильма может быть ноль или много рецензий, а рецензия принадлежит нолю или одному фильму.
Столбец film_id в films ссылается на столбец film_id в film_reviews таблице.
Для того, чтобы сделать выборку данных из таблицы films_reviews,
которые могут иметь или не иметь соответствующие строки в таблице films,
то необходимо использовать предложение RIGHT JOIN. Делается это следующим образом:
- сначала необходимо указать столбцы в обеих таблицах, из которых мы хотим выбирать данные;
- необходимо указать левую таблицу (таблица films) в предложении FROM;
- указываем правую таблицу (таблицу films_reviews) в предложении RIGHT JOIN и условие соединения после ключевого слова ON.
Таким образом, запрос будет иметь вид:

SELECT review, title
FROM films
RIGHT JOIN film_reviews on films.film_id = film_reviews.film_id;

Для сокращения можно использовать псевдонимы имен таблиц. Также можно писать RIGHT OUTER JOIN,
хотя использование OUTER не является обязательным.

Напишите запрос с использованием RIGHT JOIN для схемы, представленной ниже.
В результатах должны быть отражены значения столбцов id, model, number, volume, power.
Объединением происходит по столбцу id из cars и car_id из engines.
 */

CREATE TABLE cars (
    id int primary key,
    model text
);

CREATE TABLE engines (
    number int primary key,
    volume decimal,
    power int,
    car_id int references cars(id)
);

INSERT INTO cars VALUES (1, 'Toyota Camry');
INSERT INTO cars VALUES (2, 'Renault Sandero');

INSERT INTO engines VALUES (1234, 2.5, 181, 1);
INSERT INTO engines VALUES (5678, 1.2, 75, 2);
INSERT INTO engines VALUES (1479, 1.6, 123, null);
INSERT INTO engines VALUES (5072, 3.0, 231, null);

SELECT id, model, number, volume, power
FROM cars
RIGHT JOIN engines ON id = car_id
