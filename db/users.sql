/*
Для того чтобы получить данные из нескольких таблиц, используется INNER JOIN.
Например, есть 2 таблицы:

CREATE TABLE A (
    pka int primary key,
    c1 text
);

CREATE TABLE B (
    pkb int primary key,
    c2 text,
    fka int references A(pka)
);

Синтаксис выполнения SELECT запроса с использование INNER JOIN будет иметь вид:

SELECT pka, c1, pkb, c2
FROM A
INNER JOIN B ON pka = fka;
Как же это работает?

Для каждой строки в таблице А внутреннее соединение сравнивает значение в столбце pka со значением в столбце fka каждой строки в таблице В:
- если эти значения равны, то внутреннее соединение создает новую строку, которая содержит столбцы обеих таблиц и добавляет ее в результаты выборки;
- если же значения не равны, то внутреннее соединение просто игнорирует их и переходит к следующей строке.

Для представленной ниже схемы напишите запрос, который вернет все строки, в результатах будут отражены данные столбцов
id, login, password, email, name и объединение будет происходить по id и account_id;
*/

CREATE TABLE accounts (
    id int primary key,
    login text,
    password text
);

CREATE TABLE users (
    u_id int primary key,
    email text,
    name text,
    account_id int references accounts(id)
);

INSERT INTO accounts VALUES (1, 'login_1', '12345');
INSERT INTO accounts VALUES (2, 'login_2', '67890');

INSERT INTO users VALUES (1, 'email_1@mail.ru', 'first_name', 1);
INSERT INTO users VALUES (2, 'email_2@bk.ru', 'second_name', 2);

SELECT id, login, password, email, name
FROM accounts
INNER JOIN users ON id = account_id