SELECT 
    author,
    title,
    CASE 
        WHEN author = 'Булгаков М.А.' THEN ROUND(price * 1.1, 2)
        WHEN author = 'Есенин С.А.' THEN ROUND(price * 1.05, 2)
        ELSE price
    END AS new_price
FROM book;
