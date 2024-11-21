/*
 В реляционной БД данные обычно распределяются более чем в одной таблице. Соответственно, чтобы выбрать все данные,
 очень часто необходимо запрашивать данные из нескольких таблиц.
 Для того чтобы получить данные из нескольких таблиц, используется INNER JOIN.
 Для того, чтобы выполнить объединение между таблицами используется внешний ключ (FOREIGN KEY) –
 это столбец или группа столбцов в таблице, которые ссылаются на первичный ключ другой таблицы.
 Например, есть таблицы:

 CREATE TABLE A (
     pka int primary key,
     c1 text
 );

 CREATE TABLE B (
     pkb int primary key,
     c2 text,
     fka int references A(pka)
 );

 Синтаксис выполнения SELECT запроса с использование INNER JOIN будет иметь вид:

 SELECT pka, c1, pkb, c2
 FROM A
 INNER JOIN B ON pka = fka;

 Для представленной ниже схемы таблиц напишите запрос, в результатах выборки должны быть отражены все строки,
 среди столбцов отражены name и description связь между таблицами отражается по столбцу id в colors
 и color_id в actions.
 */

 CREATE TABLE colors (
     id int primary key,
     name text
 );

 INSERT INTO colors VALUES(1, 'red');
 INSERT INTO colors VALUES(2, 'black');

SELECT colors.name, actions.description
FROM actions
JOIN colors ON colors.id = actions.color_id;