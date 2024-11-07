SELECT 
	author, 
	ROUND(SUM(price * amount), 2) AS Стоимость,
	ROUND(SUM(price * amount) * 18 /118, 2) AS НДС, 
	ROUND(SUM(price * amount) / 1.18, 2) AS Стоимость_без_НДС
FROM book
GROUP BY author
ORDER BY author ASC