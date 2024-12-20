/*
Для представленной ниже схемы напишите запрос, который будет сочетать в себе 2 условия с помощью AND:

в результаты выборки должны попасть только те строки, в которых в поле amount находятся значения от 80 до 190

в результаты должны попасть только те строки, в которых в поле payment_date не находятся значения
в пределах от '2022-02-01 12:00:00' до '2022-08-01 12:00:00'. Вам понадобится оператор NOT BETWEEN.
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
WHERE amount BETWEEN 80 AND 190 AND payment_date NOT BETWEEN '2022-02-01 12:00:00' AND '2022-08-01 12:00:00';
