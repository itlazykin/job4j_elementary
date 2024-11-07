/*
Посчитать сколько и каких экземпляров книг нужно заказать поставщикам, 
чтобы на складе стало одинаковое количество экземпляров каждой книги,
равное значению самого большего количества экземпляров одной книги на складе. 
Вывести название книги, ее автора, текущее количество экземпляров на складе и 
количество заказываемых экземпляров книг. Последнему столбцу присвоить имя Заказ. 
В результат не включать книги, которые заказывать не нужно.
*/
SELECT 
    title, 
    author, 
    amount,
    (макс_количество - amount) AS Заказ
FROM 
    book,
    (SELECT MAX(amount) AS макс_количество FROM book) AS макс_запас
WHERE 
    amount < макс_количество;
