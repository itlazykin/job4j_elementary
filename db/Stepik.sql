DELETE FROM supply
WHERE author IN (
    SELECT book.author
    FROM book
    GROUP BY book.author
    HAVING SUM(book.amount) > 10
);

SELECT * FROM s;