/*
Для того чтобы получить данные из нескольких таблиц, используется INNER JOIN.
Например, есть 2 таблицы:

CREATE TABLE A (
    id int primary key,
    c1 text
);

CREATE TABLE B (
    id int primary key,
    c2 text,
    a_id int references A(id)
);
Синтаксис выполнения SELECT запроса с использование INNER JOIN будет иметь вид:

SELECT a.id, a.c1, b.id, b.c2
FROM A a
JOIN B b on a.id = b.a_id;

Важно отметить, что соединять можно больше двух таблиц. Например, чтобы соединить 3 таблицы, необходимо поместить
второе предложение INNER JOIN после первого предложения INNER JOIN в виде следующего запроса.

Например, добавим таблицу:

CREATE TABLE C (
    id int primary key,
    c3 text,
    b_id int references B(id)
);

И тогда запрос объединения 3 таблиц примет вид:

SELECT a.id, a.c1, b.id, b.c2
FROM A a
JOIN B b on a.id = b.a_id
JOIN C c on b.id = c.b_id;

Чтобы объединить более трех таблиц, то мы просто применяем ту же технику соединения таблиц.

Для представленной ниже схемы выполните запрос объединения трех таблиц. В результатах выборки должны быть отражены
значения столбцов id из таблицы users, email, name, login, password, amount, payment_date. Объединять будем по
столбцам id из таблицы users и user_id, id из таблицы accounts и account_id. В качестве псевдонимов используйте
первые буквы названия таблиц.
 */

CREATE TABLE users (
    id int primary key,
    email text,
    name text
);

CREATE TABLE accounts (
    id int primary key,
    login text,
    password text,
    user_id int references users(id)
);

CREATE TABLE payment (
    id int primary key,
    amount decimal,
    payment_date date,
    account_id int references accounts(id)
);

INSERT INTO users VALUES (1, 'email_1@mail.ru', 'first_name');
INSERT INTO users VALUES (2, 'email_2@bk.ru', 'second_name');

INSERT INTO accounts VALUES (1, 'login_1', '12345', 1);
INSERT INTO accounts VALUES (2, 'login_2', '67890', 2);

INSERT INTO payment VALUES (1, 100.0, '2022-09-09', 1);
INSERT INTO payment VALUES (2, 200.0, '2022-08-08', 2);

SELECT u.id, u.email, u.name, a.login, a.password, p.amount, p.payment_date
FROM users AS u
JOIN accounts AS a ON u.id = user_id
JOIN payment AS p ON a.id = account_id