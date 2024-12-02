/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим CROSS JOIN.
Предложение CROSS JOIN позволяет нам производить декартово произведение строк в двух или более таблиц.
Синтаксис этого соединения достаточно прост:

SELECT список_столбцов
FROM table_1
CROSS JOIN table_2;

Однако это выражение можно переписать без использования CROSS JOIN:

SELECT список_столбцов
FROM table_1, table_2;

Т.е. если во FROM перечислять таблицы через запятую, то PostgreSQL по умолчанию будет выполнять CROSS JOIN.
К тому же, для имитации перекрестного соединения можно использовать INNER JOIN с условием, которое будет
всегда оцениваться как true:

SELECT список_столбцов
FROM table_1
INNER JOIN table_2 ON true;

Для приведенной ниже схемы напишите запрос с имитацией поведения CROSS JOIN, выбирайте любой из представленных выше
вариантов. В результатах должны быть отражены значения столбцов a_name, b_name.
 */

CREATE TABLE authors (
    a_id int primary key,
    a_name text
);

CREATE TABLE books (
    b_id int primary key,
    b_name text,
    author_id int references authors(a_id)
);

INSERT INTO authors VALUES (1, 'Bruce Eckel'),
                           (2, 'Robert Lafore'),
                           (3, 'Andrew Tanenbaum');

INSERT INTO books VALUES (1, 'Modern Operating System', 3),
                         (2, 'Thinking in Java', 1),
                         (3, 'Computer Architecture', 3);

SELECT a_name, b_name FROM authors
INNER JOIN books ON TRUE