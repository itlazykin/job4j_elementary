SELECT 
    title,
    author
FROM book
WHERE title LIKE '_% %'  -- выводит книги название которых состоит из двух и более слов
  AND author LIKE '%_С.%' -- инициалы автора содержат букву «С»
ORDER BY title ASC;
