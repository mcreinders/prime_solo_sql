
git remote add origin https://github.com/mcreinders/prime_solo_sql.git

--1. Which authors are represented in our store?
--SELECT * FROM authors;

--2. Which authors are also distinguished authors?
--SELECT * FROM distinguished_authors;

--3. Which authors are not distinguished authors?
--SELECT * FROM authors LEFT JOIN distinguished_authors 
--ON authors.id = distinguished_authors.id WHERE distinguished_authors.id IS NULL;

--4. How many authors are represented in our store?
--SELECT COUNT(*) FROM authors;

--5. Who are the favorite authors of the employee with the first name of Michael?
--SELECT authors_and_titles FROM favorite_authors JOIN employees ON favorite_authors.employee_id = employees.id WHERE employees.first_name = 'Michael';

--6. What are the titles of all the books that are in stock today?
--SELECT books.title, editions.isbn FROM books JOIN editions ON books.id=editions.book_id JOIN stock ON editions.isbn=stock.isbn;

--7. Insert one of your favorite books into the database. Hint: You’ll want to create data in at least 2 other tables to completely create this book.
--INSERT INTO books(id, title, author_id, subject_id) VALUES (155, 'Brideshead Revisted', 1949, 9);
--INSERT INTO editions(isbn, book_id, edition, publisher_id, publication, type) VALUES ('0123456789', 155, 1, 65, '1949-04-01', 'p')

--8. What authors have books that are not in stock?
--SELECT authors.last_name, authors.first_name FROM authors JOIN books ON authors.id=books.author_id JOIN editions ON books.id=editions.book_id JOIN stock ON editions.isbn=stock.isbn;

--9. What is the title of the book that has the most stock?
--SELECT books.title, stock.stock FROM books JOIN editions ON books.id=editions.book_id JOIN stock ON editions.isbn=stock.isbn ORDER BY stock.stock DESC LIMIT 1;






