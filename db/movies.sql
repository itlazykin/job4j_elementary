/*
Функция COUNT() представляет собой агрегатную функцию, которая позволяет получить количество строк,
удовлетворяющих определенному условию запроса. К примеру, запрос можно выполнить следующим образом:

SELECT имя_столбца, COUNT(имя_столбца) FROM название_таблицы GROUP BY имя_столбца;

Функция COUNT() часто используется с предложением GROUP BY, чтобы вернуть количество элементов для каждой группы.
Естественно, имя столбца, который мы ставим в COUNT и GROUP BY должны совпадать.

Для представленной ниже схемы movies, напишите запрос, который вернет количество фильмов в каждой категории.
Результат выборки должен быть отсортирован по возрастанию category_id.
Соответственно в COUNT и GROUP BY будете использовать столбец category_id.
*/

CREATE TABLE movies(
    id int not null primary key,
    name text,
    producer text,
    category_id int
);

INSERT INTO movies VALUES(1, 'name_1', 'producer_1', 1);
INSERT INTO movies VALUES(2, 'name_2', 'producer_2', 2);
INSERT INTO movies VALUES(3, 'name_3', 'producer_3', 3);
INSERT INTO movies VALUES(4, 'name_4', 'producer_4', 4);
INSERT INTO movies VALUES(5, 'name_5', 'producer_3', 1);
INSERT INTO movies VALUES(6, 'name_6', 'producer_2', 2);
INSERT INTO movies VALUES(7, 'name_7', 'producer_4', 3);
INSERT INTO movies VALUES(8, 'name_8', 'producer_1', 1);
INSERT INTO movies VALUES(9, 'name_9', 'producer_3', 2);
INSERT INTO movies VALUES(10, 'name_10', 'producer_1', 1);

SELECT category_id, COUNT(*)
FROM movies
GROUP BY category_id
ORDER BY category_id ASC