SELECT 
	author, 
	MIN(price) AS "Минимальная_цена",
	MAX(price) AS "Максимальная_цена ", 
	ROUND(AVG(price), 6) AS "Средняя_цена"
FROM book
GROUP BY author
ORDER by author ASC
