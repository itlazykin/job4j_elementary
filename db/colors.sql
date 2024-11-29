/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. При этом бывают не только внутренние,
но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим FULL OUTER JOIN.
Например, мы хотим выполнить полное внешнее соединение двух таблиц: А и В. Синтаксис будет иметь вид:

SELECT * FROM A
FULL OUTER JOIN B on A.id = B.id;

В этом синтаксисе ключевое слово OUTER является необязательным.
Полное внешнее соединение объединяет результаты как левого, так и правого соединения.

Для представленной ниже схемы напишите запрос с использование FULL OUTER JOIN.
В результатах должны быть отражены значения всех столбцов обоих таблиц. Левая таблица – colors, правая – actions.
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
FULL OUTER JOIN actions ON id = color_id
