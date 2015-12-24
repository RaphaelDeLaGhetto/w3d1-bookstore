-- Note how one of the of books has 0 stock. Modify the query to only return
-- books that are in stock.
SELECT e.isbn, b.title, s.stock, s.retail FROM editions AS e
  JOIN publishers AS p ON p.id = e.publisher_id
  JOIN books AS b ON b.id = e.book_id
  JOIN stock AS s ON s.isbn = e.isbn
  WHERE p.name = 'Random House'
  AND s.stock > 0;
