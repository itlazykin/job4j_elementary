/*
При выполнении SELECT запроса, строки выборки будут возвращены в произвольном порядке.
Для того, чтобы отсортировать строки результатов выборки, необходимо использовать оператор ORDER BY.
Синтаксис выглядит следующим образом:

SELECT имена_столбцов_через_запятую FROM название_таблицы ORDER BY имя_столбца_по_которому_сортируем ASC | DESC;

При этом учитываем следующие особенности:
- столбцов для сортировки может быть несколько. В таком случае столбцы по которым выполняется сортировка,
указываются через запятую. Если столбцов несколько, то в сортировке они учитываются в том порядке, в котором указаны;
- ASC и DESC это сортировка по возрастанию и убыванию соответственно;
- если не указано ASC или DESC, то по умолчанию выполняется сортировка по возрастанию. ASC указывать не обязательно.

Для представленной ниже схемы таблицы subjects необходимо написать запрос, который выполнит выборку всех записей.
Выбирать будем данные всех столбцов, данные должны быть отсортированы по name и grade по возрастанию.
*/

CREATE TABLE subjects(
    id int not null primary key,
    name text,
    grade int,
    start_date timestamp
);

INSERT INTO subjects VALUES(1, 'Math', 50, current_date);
INSERT INTO subjects VALUES(2, 'English', 75, current_date);
INSERT INTO subjects VALUES(3, 'Sociology', 65, current_date);
INSERT INTO subjects VALUES(4, 'Economic', 60, current_date);
INSERT INTO subjects VALUES(5, 'Computer Science', 95, current_date);

SELECT * FROM subjects ORDER BY name, grade;