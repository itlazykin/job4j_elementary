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

Для представленной ниже схемы таблицы accounts необходимо написать запрос, который выполнит выборку всех записей.
Выбирать будем данные всех столбцов, данные должны быть отсортированы по name по возрастанию.
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

select * from accounts ORDER BY name ASC
