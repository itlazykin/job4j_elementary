/*
Нужно получить запись с ID = 1;
*/

CREATE TABLE account (
    id int not null primary key,
    name text
);

INSERT INTO account VALUES (1, 'Petr Arsentev');
INSERT INTO account VALUES (2, 'Ivan Ivanov');
INSERT INTO account VALUES (3, 'Gleb Bobrov');

SELECT * FROM account
WHERE id = 1;