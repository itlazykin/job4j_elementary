/*
Для того чтобы в выборку попали данные из нескольких столбцов, при этом уникальность учитывалась только лишь в части
из них - используется предложение DISTINCT. Синтаксис выглядит следующим образом:

SELECT DISTINCT ON (имена_столбцов_через_запятую) имена_столбцов_через_запятую_отражаем_в_выборке FROM название_таблицы;

Хорошей практикой является всегда использовать ORDER BY вместе с DISTINCT чтобы сделать результирующий набор предсказуемым.
При этом если в ORDER BY указано несколько столбцов, то самым левым в перечислении столбцов должно быть то,
которое указано в DISTINCT - т.е. столбцы указанные в DISTINCT должны быть в ORDER BY (в любом порядке) и
только потом уже могут идти остальные столбцы. В противном случае вы получите ошибку синтаксиса.

Для представленной ниже схемы products напишите запрос, который выполнит выборку уникальных строк по столбцу price.
В выборке должны быть отображены все столбцы (name, price и count) ,
сортировка должна быть по полям name, price и count.
*/

CREATE TABLE products(
    id int not null primary key,
    name text,
    price int,
    count int
);

INSERT INTO products VALUES(1, 'bread', 50, 10);
INSERT INTO products VALUES(2, 'milk', 75, 15);
INSERT INTO products VALUES(3, 'sugar', 105, 30);
INSERT INTO products VALUES(4, 'bread', 50, 10);
INSERT INTO products VALUES(5, 'milk', 68, 15);
INSERT INTO products VALUES(6, 'sugar', 105, 30);
INSERT INTO products VALUES(7, 'bread', 45, 10);
INSERT INTO products VALUES(8, 'milk', 75, 15);
INSERT INTO products VALUES(9, 'sugar', 105, 30);

SELECT DISTINCT ON (price) name, price, count FROM products ORDER BY price, name, count;
