SELECT ROUND(AVG(price), 2) AS Средняя_цена, SUM(price * amount) AS Стоимость
FROM (
    SELECT title, amount, price
    FROM book
    GROUP BY title, amount, price
    HAVING amount > 4 AND amount < 15 --  В запросах с групповыми функциями вместо WHERE используется ключевое слово HAVING , которое размещается после оператора GROUP BY.
) as _;