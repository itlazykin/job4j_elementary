/*
Функция MIN - агрегатная функция, которая возвращает минимальное значение в наборе.
Для того чтобы найти минимальное значение в столбце таблицы, мы можем просто передавать имя этого столбца в функцию MIN.
Синтаксис выполнения имеет следующий вид:

SELECT MIN(имя_столбца) FROM название_таблицы;

При этом тип данных столбца может быть числом, строкой или любым сопоставимым типом.

Для представленной ниже схемы transactions напишите запрос, который ищет минимальное значение в столбце amount.
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

SELECT MIN(amount) FROM transactions;