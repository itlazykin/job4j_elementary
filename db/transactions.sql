/*
Чтобы рассчитать сумму значений сгруппированных данных, вместе с SUM используем предложение GROUP BY - запрос будет
выглядеть следующим образом:

SELECT столбец_группировки, остальные_столбцы, SUM(имя_столбца) FROM название_таблицы GROUP BY столбец_группировки;

Вначале предложение GROUP BY делит данные таблицы на группы, а далее SUM выполняет расчет суммы значений для каждой из
групп.

Для представленной ниже схемы transactions напишите запрос, который вернет сумму значений по столбцу amount.
Данные должны быть сгруппированы по столбцу purpose, а также отсортированы по этому столбцу по убыванию.
В результатах выборки должны быть только столбец purpose и SUM.
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

SELECT purpose, SUM(amount) FROM transactions GROUP BY purpose ORDER BY purpose DESC;