-- What's the total inventory of books in this library (i.e. how many total
-- copies are in stock)?
SELECT sum(stock) AS total_books_in_stock FROM stock;
