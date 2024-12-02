/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим CROSS JOIN.
Предложение CROSS JOIN позволяет нам производить декартово произведение строк в двух или более таблиц.
Синтаксис этого соединения достаточно прост:

SELECT список_столбцов
FROM table_1
CROSS JOIN table_2;

Если table_1 имеет n строк, а table_2 – m строк, то результирующий набор будет содержать n * m строк.
Например, table_1 имеет 1000 строк, а table_2 – также 1000 строк, то в результирующем наборе будет уже 1_000_000 строк.

Для приведенной ниже схемы напишите запрос с использованием CROSS JOIN.
В результатах должны быть отражены значения столбцов a_name, b_name.
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
CROSS JOIN books