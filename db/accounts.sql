/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. При этом бывают не только внутренние,
но и внешние JOIN. В свою очередь они бывают разных видов. Рассмотрим RIGHT JOIN.

Например, у нас есть следующие таблицы:

CREATE TABLE films (
    film_id int  PRIMARY KEY,
    title text
);

CREATE TABLE film_reviews (
    review_id int PRIMARY KEY,
    review text,
    film_id int
);
Запрос с использованием будет иметь следующий вид:

SELECT review, title
FROM films
RIGHT JOIN film_reviews on films.film_id = film_reviews.film_id;

Каким же образом это работает?
- предложение RIGHT JOIN начинает выборку данных из правой таблицы – film_reviews;
- для каждой строки из правой таблицы (film_reviews) RIGHT JOIN проверяет, равно ли значение
film_id столбце таблицы film_reviews значению в столбце film_id каждой строки из левой таблицы (films);
- если указанные значения равны, то RIGHT JOIN создает новую строку, которая содержит значения столбцов из обеих таблиц,
 которые указаны в SELECT и включает эту строку в результаты выборки;
- если же указанные значения не равны, то RIGHT JOIN все равно создает новую строку,
которая содержит столбцы из обеих таблиц и эта новая строка включается в результаты выборки.
Однако в таком случае столбцы из левой таблицы films значением NULL.
- таким образом, RIGHT JOIN выбирает все строки из правой таблицы независимо от того,
есть ли у них совпадающие строки из левой таблицы.

Напишите запрос с использованием RIGHT JOIN для схемы, представленной ниже.
В результатах должны быть отражены значения столбцов id из таблицы accounts,
email из таблицы accounts, password, id из таблицы users, email из таблицы users, name.
Объединением происходит по столбцу id из accounts и account_id из таблицы users.
В качестве псевдонимов используйте первые буквы названия таблиц.
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

INSERT INTO accounts VALUES (1, 'for_auth_1@mail.ru', '12345');
INSERT INTO accounts VALUES (2, 'for_auth_1@bk.ru', '67890');

INSERT INTO users VALUES (1, 'email_1@mail.ru', 'first_name', 1);
INSERT INTO users VALUES (2, 'email_2@bk.ru', 'second_name', null);
INSERT INTO users VALUES (3, 'email_3@mail.ru', 'third_name', null);
INSERT INTO users VALUES (4, 'email_4@bk.ru', 'fourth_name', 2);

SELECT a.id, a.email, a.password, u.id, u.email, u.name
FROM accounts AS a
RIGHT JOIN users AS u ON a.id = account_id