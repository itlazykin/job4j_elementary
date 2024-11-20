/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

При этом иногда необходимо сделать выборку строк чтобы при проверке условия значение в столбце находилось в каком-то
диапазоне значений. В этом случае нам поможет оператор BETWEEN. Синтаксис будет иметь следующий вид:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE столбец_для_проверки BETWEEN значение_1 AND значение_2;

При этом важно понимать, что если значение в столбце для проверки больше или равно значению_1 и меньше или равно
значению_2, то логическое выражение вернет true (и такие значения попадут в условия выборки). В противном случае оно
возвращает значение false.

Для представленной ниже схемы напишите запрос, который вернет только те строки, в которых значения в столбце first_name
начинается с подстроки An, и длина всей строки в это столбце находится в пределах от 3 до 5 символов
(используйте функцию length())
*/

CREATE TABLE customers(
    id int not null primary key,
    first_name text,
    last_name text,
    active boolean,
    email text
);

INSERT INTO customers VALUES(1, 'Petr', 'Arsentev', true, 'parsentev@bk.ru');
INSERT INTO customers VALUES(2, 'Andrey', 'Hincu', false, 'anincu@bk.ru');
INSERT INTO customers VALUES(3, 'Rail', 'Shamsemuhametov', true, 'rsham@bk.ru');
INSERT INTO customers VALUES(4, 'Elena', 'Kartashova', false, 'ekart@bk.ru');
INSERT INTO customers VALUES(5, 'Lana', 'Sergeeva', true, 'lserg@bk.ru');

SELECT * FROM customers
WHERE first_name
LIKE ('An%') AND LENGTH(first_name) BETWEEN 3 AND 5;