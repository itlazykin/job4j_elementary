/*
Агрегатную функцию MAX можно использовать вместе с GROUP BY, чтобы получить максимальное значение для каждой группы.
Таким образом можно, например, получить самую высокую цену за товар в определенной категории и т.п.

Примерный синтаксис такого запроса будет иметь вид:

SELECT столбец_группировки, остальные_столбцы, MAX(имя_столбца) FROM название_таблицы GROUP BY столбец_группировки;

Для представленной ниже схемы transactions напишите запрос, который найдет максимальное значение в столбце
amount для каждой из групп. Данные должны быть сгруппированы по столбцу purpose.
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

SELECT purpose, MAX(amount) FROM transactions GROUP BY purpose;