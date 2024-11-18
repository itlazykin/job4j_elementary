/*
На практике очень часто функция MIN используется вместе с предложением GROUP BY.
Это необходимо для того, чтобы найти наименьшее значение в каждой группе.
Примерный синтаксис такого запроса будет иметь следующий вид:

SELECT столбец_группировки, остальные_столбцы, MIN(имя_столбца) FROM название_таблицы GROUP BY столбец_группировки;

Для представленной ниже схемы transactions напишите запрос, который найдет минимальное значение в столбце amount
для каждой группы данных - они должны быть сгруппированы по столбцу purpose.
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

SELECT purpose, MIN(amount) FROM transactions GROUP BY purpose;