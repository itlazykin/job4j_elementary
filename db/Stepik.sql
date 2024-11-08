INSERT INTO book (title, author, price, amount) 
SELECT title, author, price, amount 
FROM supply;

DELETE FROM book
WHERE book_id IN (8, 9);    -- удаляем дубли из таблицы.
SELECT * FROM book;