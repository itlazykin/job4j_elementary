/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим NATURAL JOIN.

NATURAL JOIN – это соединение, которое создает неявное соединение на основе тех столбцов в соединяемых таблицах которые
имеют одинаковые имена.
Ниже представлен синтаксис natural join в Postgres:

SELECT список_столбцов
FROM table_1
NATURAL [INNER, LEFT, RIGHT] JOIN table_2;

То, что указано в квадратных скобках не является обязательным параметром.

Для представленной ниже схемы выполните запрос с использованием NATURAL JOIN. В результатах отражаем значения всех столбцов.
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

SELECT * FROM colors
NATURAL JOIN actions
