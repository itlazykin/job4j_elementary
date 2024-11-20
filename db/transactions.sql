/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.

При этом условия можно комбинировать и проверять несколько условий. Для этого используется логическая операция OR (ИЛИ).
Синтаксис имеет следующий вид:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE условие1 OR условие2 OR условие3;

В итоге запрос вернет только те строки, удовлетворяющих хотя бы одному из условий, которые объединены с помощью OR.

Для представленной ниже схемы transactions напишите запрос, который выполнит выборку всех записей, удовлетворяющих
хотя бы одному из условий - значение в столбце purpose равно 'Credit' или сумма amount больше 170 усл. ед.
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
INSERT INTO transactions VALUES(3, 'Service', 3, 194, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(4, 'Vacation', 4, 254, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(5, 'Credit', 1, 244, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(6, 'Current payment', 2, 114, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(7, 'Service', 3, 178, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(8, 'Vacation', 4, 196, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(9, 'Credit', 1, 198, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(10, 'Current payment', 2, 78, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(11, 'Service', 3, 156, '2022-06-01 12:00:00');
INSERT INTO transactions VALUES(12, 'Vacation', 4, 152, '2022-06-01 12:00:00');

SELECT * FROM transactions
WHERE purpose = 'Credit' OR amount > 170;
