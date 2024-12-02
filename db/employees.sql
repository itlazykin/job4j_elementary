/*
Для того чтобы получить данные из нескольких таблиц, используется JOIN. В свою очередь они бывают разных видов.
Рассмотрим SELF JOIN.
SELF JOIN – это соединение, которое соединяет таблицу с самой собой.
Чтобы сформировать SELF JOIN, мы указываем одну и ту же таблицу 2 раза с разными псевдонимами таблиц указываем условие
объединения после ключевого слова ON.
Например, если мы используем INNER JOIN, то запрос будет иметь вид:

SELECT список_столбцов
FROM table_name t1
INNER JOIN table_name t2 ON условие_объединения;

Кроме того, также можно использовать предложения LEFT JOIN и RIGHT JOIN для присоединения таблицы к самой себе.
Для представленной ниже схемы напишите запрос с использованием INNER JOIN. В итоге вы получите SELF JOIN.
Не забудьте про использование псевдонимов – для таблицы к которой присоединяем используем e, и которую присоединяем – m.
В качестве условия соединения используйте выражение m.e_id = e.superviser_id.
*/

CREATE TABLE employees (
    e_id int primary key,
    name text,
    superviser_id int references employees(e_id)
);

INSERT INTO employees VALUES (1, 'Petr', null),
                             (2, 'Andrey', 1),
                             (3, 'Elena', 1),
                             (4, 'Anna', 2),
                             (5, 'Stas', 2),
                             (6, 'Sergey', 3),
                             (7, 'Alex', 3),
                             (8, 'Michael', 3);

SELECT e.name, m.name FROM employees AS e
INNER JOIN employees AS m ON m.e_id = e.superviser_id