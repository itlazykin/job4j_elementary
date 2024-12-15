/*
Подзапрос - это запрос, который помещен в другой запрос. Также можно встретить такое определение как внутренний запрос
или вложенный запрос. Подзапрос может быть полезен для извлечения данных, которые далее будут использованы основным
запросом в качестве условия при дальнейшей выборке данных. Основной синтаксис выглядит следующим образом:

SELECT
    столбец_1,
    столбец_2,
    ...
FROM
    название_таблицы
WHERE
    столбец_1 оператор_сравнения (
        SELECT
            столбец_2
        FROM
            название_таблицы
        WHERE
            условие_выборки
    );

в данном случае подзапрос помещен в скобки и выполняется в первую очередь. Основной запрос будет использовать результат
подзапроса для фильтрации данных в WHERE.

Для таблиц и данных ниже необходимо:
-найти все продукты, не относящиеся к категории 'Бытовая техника'.
*/

CREATE TABLE categories
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE products
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(100)   NOT NULL,
    quantity    INTEGER        NOT NULL,
    price       NUMERIC(10, 2) NOT NULL,
    category_id INTEGER REFERENCES categories (id)
);

INSERT INTO categories (name)
VALUES ('Электроника'),
       ('Одежда'),
       ('Бытовая техника'),
       ('Книги'),
       ('Спортинвентарь');

INSERT INTO products (name, quantity, price, category_id)
VALUES ('Смартфон', 20, 1000.00, 1),
       ('Наушники', 15, 200.00, 1),
       ('Футболка', 30, 25.00, 2),
       ('Джинсы', 25, 50.00, 2),
       ('Холодильник', 10, 800.00, 3),
       ('Пылесос', 12, 150.00, 3),
       ('Роман', 40, 10.00, 4),
       ('Энциклопедия', 20, 30.00, 4),
       ('Футбольный мяч', 20, 15.00, 5),
       ('Теннисная ракетка', 15, 50.00, 5),
       ('Ноутбук', 18, 1200.00, 1),
       ('Тостер', 8, 40.00, 3),
       ('Футболка', 25, 20.00, 2),
       ('Спортивный костюм', 12, 70.00, 5),
       ('Научная литература', 30, 15.00, 4);

SELECT *
FROM products
WHERE id IN (SELECT categories FROM products
WHERE category_id != 'Бытовая техника')

