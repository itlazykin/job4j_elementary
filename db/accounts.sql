/*
Чтобы выбрать все записи из таблицы Базы данных используется следующий синтаксис:

SELECT названия_полей_в_таблице_через_запятую FROM название_таблицы;

при этом названия полей можно перечислять в произвольном порядке, после названия последнего поля запятая не ставится.

Ваша задача - написать запрос, который выполнит выборку всех записей из таблицы accounts,
при этом в выборке должны быть представлены данные всех полей таблицы. Схема таблицы представлена ниже.
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

select * from accounts
