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

Обратите внимание, что при соединении таблиц мы столкнемся с тем, что будут столбцы в разных таблицах иметь одинаковые
имена. Таким образом, если мы ссылаемся на столбцы с одинаковыми именами из разных таблиц в запросе,
то мы получим ошибку.
Чтобы избежать ошибки, нам необходимо полностью обозначить эти столбцы используя следующий синтаксис:

название_таблицы.название_столбца

На практике, чтобы не писать полное имя таблицы, используются их псевдонимы для того, чтобы присвоить короткие имена
объединенным таблицам и повысить читабельность запроса.
С учетом всего указанного запрос для таблиц А и В будет иметь вид:

SELECT a.id, a.c1, b.id, b.c2
FROM A AS a
INNER JOIN B b on a.id = b.a_id

Обратите внимание, что можно указывать AS для присвоения псевдонима, но это не является обязательным
(продемонстрировано для таблицы B). Также стоит подчеркнуть, что для идентификации столбцов указывать псевдоним
необходимо только там, где имена столбцов совпадают.

Для представленной ниже схемы напишите запрос, который вернет все строки из двух таблиц, в результатах должны быть
отражены значения столбцов id из accounts, email из accounts, password из accounts, email из users, name из users и
объединение будет по столбцам id из accounts и account_id  из users. В качестве псевдонимов используйте первые буквы
названия таблиц.

*/

CREATE TABLE accounts (
    id int primary key,
    email text,
    password text
);

CREATE TABLE users (
    id int primary key,
    email text,
    name text,
    account_id int references accounts(id)
);

INSERT INTO accounts VALUES (1, 'login_1', '12345');
INSERT INTO accounts VALUES (2, 'login_2', '67890');

INSERT INTO users VALUES (1, 'email_1@mail.ru', 'first_name', 1);
INSERT INTO users VALUES (2, 'email_2@bk.ru', 'second_name', 2);

SELECT a.id, a.email, a.password, u.email, u.name
FROM accounts AS a
INNER JOIN users AS u ON a.id = u.account_id