SELECT * FROM books;

SELECT books."id" AS "booksId",
books."name" AS "booksName",
categories."id" AS "categoryId",
categories."name" AS "categoryName"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON categories."id" = books_categories."categoryId" WHERE categories."id" = 3;


SELECT books."id" AS "booksId",
books."name" AS "booksName",
categories."id" AS "categoryId",
categories."name" AS "categoryName"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON categories."id" = books_categories."categoryId";


SELECT books."id" AS "booksId", 
       books."name" AS "bookName",
       authors."id" AS "authorsId",
       authors."name" AS "authorsName",
       authors."bio" AS "authorsBio"
FROM books
JOIN authors ON books."authorId" = authors."id"
WHERE books."name" LIKE '%Harry Potter%';