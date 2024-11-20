/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

При этом условия можно комбинировать и проверять несколько условий. Для этого используется логическая операция AND (И).
Синтаксис имеет следующий вид:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE условие1 AND условие2 AND условие3;

В итоге запрос вернет только те строки, которые удовлетворяют всем условиям, которые объединены с помощью AND.

Для представленной ниже схемы transactions напишите запрос, который выполнит выборку всех записей,
удовлетворяющих условиям - столбец purpose не равно 'Vacation' и amount меньше 150 усл. ед.
*/

CREATE TABLE transactions(
    id int not null primary key,
    purpose text,
    client_id int,
    amount int,
    payment_date timestamp
);

INSERT INTO transactions VALUES(1, 'Credit', 1, 132, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(2, 'Current payment', 2, 94, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(3, 'Service', 3, 197, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(4, 'Vacation', 4, 253, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(5, 'Delivery', 3, 167, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(6, 'Current payment', 4, 84, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(7, 'Service', 1, 132, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(8, 'Credit', 2, 672, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(9, 'Vacation', 1, 206, '2022-06-01 12:00:00');


SELECT * FROM transactions
WHERE purpose <> 'Vacation' AND amount < 150;