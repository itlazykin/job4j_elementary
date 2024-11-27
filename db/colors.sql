/*
/*
В реляционной БД данные обычно распределяются более чем в одной таблице. Соответственно, чтобы выбрать все данные,
очень часто необходимо запрашивать данные из нескольких таблиц.

Для того чтобы получить данные из нескольких таблиц, используется JOIN. При этом бывают не только внутренние,
но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим LEFT JOIN.
Например, у нас есть две таблицы:

CREATE TABLE A (
    pka int primary key,
    c1 text
);

CREATE TABLE B (
    pkb int primary key,
    c2 text,
    fka int references A(pka)
);
Каждая строка в таблице А может иметь много соответствующих строк в таблице В или не иметь вообще.
В это же время каждая строка в таблице В, имеет одну и только одну соответствующую в таблице А.
Для того, чтобы сделать выборку данных из таблицы А, которые могут иметь или не иметь соответствующие строки в
таблице В, то необходимо использовать предложение LEFT JOIN.
Синтаксис выполнения запроса будет иметь следующий вид:

SELECT pka, c1, pkb, c2
FROM A
LEFT JOIN B ON pka = fka;

Для представленной таблицы выполните запрос с использованием LEFT JOIN. В выборке должны быть отражены значения
столбцов id, name, number, description. Объединение будет производиться по столбцам id и color_id.
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

 INSERT INTO actions VALUES (1, 'draw red', 1);
 INSERT INTO actions VALUES (2, 'use black hole', 2);

INSERT INTO colors VALUES(1, 'red');
INSERT INTO colors VALUES(2, 'white');
INSERT INTO colors VALUES(3, 'black');
INSERT INTO colors VALUES(4, 'purple');

SELECT id, name, number, description
FROM colors
LEFT JOIN actions ON id = color_id