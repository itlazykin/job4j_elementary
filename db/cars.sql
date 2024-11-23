/*
 Для того чтобы получить данные из нескольких таблиц, используется INNER JOIN.

 Например, есть 2 таблицы:
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

Важно подчеркнуть, что согласно документации, если не указано иного по умолчанию выполняется INNER JOIN. Т.е. слово
INNER в запросе можно опустить, и мы получим аналогичный результат.
Таким образом, представленный выше запрос будет иметь вид:

SELECT pka, c1, pkb, c2
FROM A
JOIN B ON pka = fka;

Для представленной ниже схемы напишите запрос, который вернет все строки с использованием объединения JOIN.
В результатах выборки будут отражены столбцы id из таблицы cars, model, volume, power. Объединение происходит по
столбцам id из таблицы cars и столбцу car_id. В качестве псевдонимов используйте первые буквы названия таблиц.

 */

CREATE TABLE cars (
     id int primary key,
     model text
);

INSERT INTO cars VALUES (1, 'Toyota Camry');
INSERT INTO cars VALUES (2, 'Renault Sandero');

CREATE TABLE engines (
    id int primary key,
    volume decimal,
    power int,
    car_id int references cars(id)
);

SELECT c.id, c.model, e.volume, e.power
FROM cars AS c
JOIN engines AS e on c.id = car_id;

