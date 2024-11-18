/*
Функция COUNT() представляет собой агрегатную функцию, которая позволяет получить количество строк,
удовлетворяющих определенному условию запроса. К примеру, запрос можно выполнить следующим образом:

SELECT COUNT(*) FROM название_таблицы;

Функция COUNT(*) вернет количество строк, возвращенных SELECT-ом, включая null и дубликаты.
Если ее использовать на большом объеме данных, то запрос будет медленным.
*/

CREATE TABLE accounts(
    id int not null primary key,
    name text,
    login text,
    password text
);

INSERT INTO accounts VALUES(1, 'Petr Arsentev', 'parsentev', '1234');
INSERT INTO accounts VALUES(2, 'Andrey Hincu', 'anincu', '4321');
INSERT INTO accounts VALUES(3, 'Rail Shamsemuhametov', 'rsham', '5678');
INSERT INTO accounts VALUES(4, 'Elena Kartashova', 'ekart', '8765');
INSERT INTO accounts VALUES(5, 'Lana Sergeeva', 'lserg', '2156');

SELECT COUNT(*) FROM accounts;
