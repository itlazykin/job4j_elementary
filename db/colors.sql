/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. При этом бывают не только внутренние,
но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим RIGHT JOIN.
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
В которых есть следующие данные:

INSERT INTO films VALUES (1, 'Джокер'),
                         (2, 'Мстители: Финал'),
                         (3, 'Паразиты');

INSERT INTO film_reviews VALUES (1, 'Отлично', 1),
                                (2, 'Потрясающе', 1),
                                (3, 'Круто', 2),
                                (4, 'Прекрасно', null);
Т.е. у фильма может быть ноль или много рецензий, а рецензия принадлежит нолю или одному фильму.
Столбец film_id в films ссылается на столбец film_id в film_reviews таблице.
Тогда пример выполнения запроса с использованием RIGHT JOIN будет иметь вид:

SELECT review, title
FROM films
RIGHT JOIN film_reviews on films.film_id = film_reviews.film_id;

В этом запросе films это левая таблица, а film_reviews – правая таблица.
Для сокращения можно использовать псевдонимы имен таблиц. Также можно писать RIGHT OUTER JOIN,
хотя использование OUTER не является обязательным.

Для представленной ниже схемы напишите запрос с использованием RIGHT JOIN.
В результатах должны быть отражены значения столбцов id, name, number, description.
Объединением происходит по столбцу id из colors и color_id из actions.
 */

CREATE TABLE colors (
    id int primary key,
    name text
);

CREATE TABLE actions (
    number int primary key,
    description text,
    color_id int references colors(id)
);

INSERT INTO colors VALUES(1, 'red');
INSERT INTO colors VALUES(2, 'white');
INSERT INTO colors VALUES(3, 'black');
INSERT INTO colors VALUES(4, 'purple');

INSERT INTO actions VALUES (1, 'draw red', 1);
INSERT INTO actions VALUES (2, 'pink panther', null);
INSERT INTO actions VALUES (3, 'use for painting', null);
INSERT INTO actions VALUES (4, 'use black hole', 2);

SELECT id, name, number, description
FROM colors
RIGHT JOIN actions ON color_id = id
