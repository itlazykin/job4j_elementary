SELECT
	author,
	title
FROM book
WHERE amount BETWEEN 2 AND 14
/*
Информацию  сортируем сначала по авторам (в обратном алфавитном порядке), а затем по названиям книг (по алфавиту).
*/
ORDER BY author DESC, title ASC

