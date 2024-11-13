/*
Мы уже рассмотрели использование DISTINCT. Если в предложении указывать несколько столбцов,
то в итоге мы получим записи с уникальными сочетаниями всех этих полей.
Для того чтобы в выборку попали данные из нескольких столбцов, при этом уникальность учитывалась только лишь в части
из них - используется предложение DISTINCT . Синтаксис выглядит следующим образом:

SELECT DISTINCT (имена_столбцов_через_запятую) имена_столбцов_через_запятую_отражаем_в_выборке FROM название_таблицы;

Если список столбцов в скобках и после скобок совпадают - то все превращается в обычный DISTINCT.

Для представленной ниже схемы accounts напишите запрос, который вернет только уникальные записи по полю name_person.
При этом в выборке должны быть отражены значения полей name_person, login, password.
*/

CREATE TABLE accounts(
    id int not null primary key,
    name_person text,
    login text,
    password text
);

INSERT INTO accounts VALUES(1, 'Petr Arsentev', 'parsentev', '1234');
INSERT INTO accounts VALUES(2, 'Andrey Hincu', 'anincu', '4321');
INSERT INTO accounts VALUES(3, 'Lana Sergeeva', 'lserg', '2156');
INSERT INTO accounts VALUES(4, 'Petr Arsentev', 'arsentev_p', '1234');
INSERT INTO accounts VALUES(5, 'Andrey Hincu', 'nincu_a', '4321');
INSERT INTO accounts VALUES(6, 'Lana Sergeeva', 'serg_l', '2156');

SELECT DISTINCT (name_person) name_person, login, password FROM accounts;
