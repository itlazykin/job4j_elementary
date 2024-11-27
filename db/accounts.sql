/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. При этом бывают не только внутренние,
но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим LEFT JOIN.

CREATE TABLE A (
    pka int primary key,
    c1 text
);

CREATE TABLE B (
    pkb int primary key,
    c2 text,
    fka int references A(pka)
);

Каждая строка в таблице А может иметь много соответствующих строк в таблице В или не иметь вообще.
В это же время каждая строка в таблице В, имеет одну и только одну соответствующую в таблице А.
Синтаксис выполнения LEFT JOIN будет иметь следующий вид:

SELECT pka, c1, pkb, c2
FROM A
LEFT JOIN B ON pka = fka;

Каким же образом это работает? LEFT JOIN начинает выборку данных из левой таблицы. Для каждой строки в
левой таблице выполняется сравнение значение в столбце pka со значением каждой строки в столбце fka правой таблицы:
- если значения равны, то LEFT JOIN создает новую строку, в которой содержатся столбцы, обозначенные в предложении
SELECT и далее строка добавляется в результирующий набор;
- если значения не равны, то LEFT JOIN также создает новую строку, в которой содержатся столбцы, обозначенные
в предложении SELECT. Поскольку в таком случае из правой таблицы мы не получаем совпадение,
то столбцы из правой таблицы заполняются значением NULL.

Для представленной ниже схемы напишите запрос с использованием LEFT JOIN. Левая таблица – таблица accounts.
Объединение осуществляется по столбцам id из таблицы accounts и account_id. В результатах выборки должны быть
отражены значения столбцов id из таблицы accounts, email из таблицы accounts, password, id из таблицы users, email
из таблицы users, name. В качестве псевдонимов используйте первую букву названия таблиц.
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

INSERT INTO accounts VALUES (1, 'some_for_auth_1@mail.ru', '1_3_5');
INSERT INTO accounts VALUES (2, 'some_for_auth_1@bk.ru', '6%8%0');
INSERT INTO accounts VALUES (3, 'for_auth_1@mail.ru', '12345');
INSERT INTO accounts VALUES (4, 'for_auth_1@bk.ru', '67890');

INSERT INTO users VALUES (1, 'email_1@mail.ru', 'first_name', 3);
INSERT INTO users VALUES (2, 'email_2@bk.ru', 'second_name', 4);

SELECT a.id, a.email, a.password, u.id, u.email, u.name
FROM accounts AS a
LEFT JOIN users AS u ON a.id = u.account_id