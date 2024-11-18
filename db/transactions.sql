/*
Для того чтобы посчитать среднее значение в каком-нибудь столбце можно использовать функцию AVG.
Выполнить запрос можно следующим образом:

SELECT AVG(имя_столбца) FROM название_таблицы;

Как мы понимаем при расчете среднего значения может получится дробное число и вывод результатов расчета может быть
не очень читабельным. Для того чтобы привести его к некоему шаблону можно сразу результат
расчета привести к типу numeric следующим образом

SELECT AVG(имя_столбца)::numeric(точность, шкала) FROM название_таблицы;

Точность в данном случае означает общее число цифр в значении, а шкала - количество цифр,
которые будут выведены после точки в дробном значении.

Для представленной ниже схемы transactions напишите запрос, который вернет среднее значение по столбцу amount.
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

SELECT AVG(amount) FROM transactions;