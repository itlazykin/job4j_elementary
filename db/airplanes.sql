/*
Для того, чтобы выбрать строки, которые удовлетворяют заданному условию, в SQL используется WHERE предложение.
При этом иногда необходимо сделать выборку строк чтобы при проверке условия значение в столбце
соответствовало какому-то интересующему нас шаблону. В этом случае используется оператор LIKE.
Этот оператор используется вместе с символом "%" - он соответствует любой последовательности символов,
вместо него могут быть подставлены любые символы в любом количестве, а может быть не подставлено ни одного символа.
Синтаксис будет выглядеть следующим образом:

SELECT имена_столбцов_через_запятую FROM название_таблицы WHERE столбец_для_проверки LIKE 'подстрока%';

Для представленной ниже схемы airplanes необходимо выполнить запрос, который вернет все строки,
у которых в поле model содержится строка которая начинается с Airbus.
*/

 CREATE TABLE airplanes(
    id int not null primary key,
    model text,
    range int,
    capacity int
);

INSERT INTO airplanes VALUES(1, 'Airbus-320-200', 5700, 180);
INSERT INTO airplanes VALUES(2, 'Airbus-321-200', 5600, 220);
INSERT INTO airplanes VALUES(3, 'Airbus-319-100', 6700, 150);
INSERT INTO airplanes VALUES(4, 'Cessna 208 Caravan', 1200, 13);
INSERT INTO airplanes VALUES(5, 'Boeing 777-300', 11100, 450);
INSERT INTO airplanes VALUES(6, 'Boeing 767-300', 7900, 350);
INSERT INTO airplanes VALUES(7, 'Boeing 737-300', 4200, 145);
INSERT INTO airplanes VALUES(8, 'Sukhoi SuperJet-100', 3000, 98);
INSERT INTO airplanes VALUES(9, 'Bombardier CRJ-200', 2700, 50);

SELECT * FROM airplanes
WHERE model LIKE 'Airbus%';