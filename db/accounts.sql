/*
При выборке данных из таблицы мы указываем имена столбцов, из которых мы будем выполнять выборку.
При этом с результатах выборки столбцы можно переименовать - для это используются alias, или псевдонимы.
Используется такой синтаксис:

SELECT имя_столбца AS имя_псевдонима FROM название_таблицы;

Псевдонимы мы можем использовать и для названия таблиц, мы это будем использовать позже,
когда будем выполнять JOIN таблиц. Обратите внимание, что в SQL для написания составных имен
используется стиль snake_case, каждое последующее слово составного имени отделяется от предыдущего нижним подчеркиванием
 (как названия констант в Java).

Для представленной ниже схемы таблицы accounts необходимо написать запрос, который выполнит выборку всех записей.
Выбирать будем только данные столбцов name и password - при этом для name используйте псевдоним person_name,
а для password - account_password.
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

select name AS person_name, password AS account_password from accounts
