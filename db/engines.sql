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

Таким образом, чтобы выполнить объединение таблиц А и В, необходимо выполнить следующее:
- сначала указываем столбцы из обеих таблиц, данные которых мы хотим получить в результатах;
- во-вторых, указываем основную таблицу, т.е. таблицу А во FROM;
- в-третьих, указываем вторую таблицу B в предложении INNER JOIN и далее
указываем условие соединения после ключевого слова ON.

 Для представленной ниже схемы таблиц выполните запрос, который выполнит выборку всех строк,
 в результатах должны быть отражены данные столбцов id, model, volume, power,
 связь между таблицами осуществляется с помощью столбцов id  и car_id.
 */

CREATE TABLE cars (
     id int primary key,
     model text
);

INSERT INTO cars VALUES (1, 'Toyota Camry');
INSERT INTO cars VALUES (2, 'Renault Sandero');

CREATE TABLE engines (
    number int primary key,
    volume decimal,
    power int,
    car_id int references cars(id)
);

INSERT INTO engines VALUES (1234, 2.5, 181, 1);
INSERT INTO engines VALUES (5678, 1.2, 75, 2);

SELECT id, model, volume, power
FROM cars
INNER JOIN engines ON id = car_id;