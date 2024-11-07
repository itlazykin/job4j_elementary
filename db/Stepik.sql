SELECT author, title, price
FROM book
WHERE price < ALL (
		SELECT MAX(price)
		FROM book
		GROUP BY author
);