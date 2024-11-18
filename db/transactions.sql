/*
Для того чтобы посчитать среднее значение в каком-нибудь столбце можно использовать функцию AVG.
Если несколько значений в столбце совпадают, то для того, чтобы посчитать только среднее значение среди
уникальных значений, то можно просто добавить DISTINCT - выглядит это следующим образом:

SELECT AVG(DISTINCT имя_столбца) FROM название_таблицы;

В результате мы получим среднее значение только среди уникальных значений в столбце.

Для представленной ниже схемы transactions напишите запрос, который вернет среднее значение по столбцу amount и
при этом для расчета будут только уникальные значения amount.
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

SELECT AVG(DISTINCT amount) FROM transactions;