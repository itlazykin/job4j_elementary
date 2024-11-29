/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. При этом бывают не только внутренние,
но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим FULL OUTER JOIN.
Например, мы хотим выполнить полное внешнее соединение двух таблиц: А и В. Синтаксис будет иметь вид:

SELECT * FROM A
FULL OUTER JOIN B on A.id = B.id;

Полное внешнее соединение объединяет результаты как левого, так и правого соединения.
Если строки в объединенной таблице не совпадают,
то полное внешнее соединение устанавливает значения NULL для каждого столбца, в котором нет совпадающей строки.
Если строка из одной таблицы имеет соответствие строке в другой таблице,
то результирующая строка будет содержать столбцы, которые заполнены данными из обеих таблиц.
Таким образом, результат включает совпадающие строки из обеих таблиц, а также несовпадающие строки.

Для представленной ниже схемы напишите запрос с использование FULL OUTER JOIN.
В результатах должны быть отражены значения всех столбцов обоих таблиц. Левая таблица – cars, правая – engines.


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

SELECT * FROM cars
FULL OUTER JOIN engines ON id = car_id
