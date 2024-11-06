SELECT 
	title,
	author
FROM book
WHERE (price BETWEEN 540.50 AND 800) AND (amount = 2 OR amount = 3 OR amount = 5 OR amount = 7)	
