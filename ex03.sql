-- Also include their stock information (available stock and retail price for
-- each book edition). You should still have the same 3 results but with more
-- information. But instead of just 2 columns, we should have 4 columns in the
-- result set.
SELECT e.isbn, b.title, s.stock, s.retail FROM editions AS e
  JOIN publishers AS p ON p.id = e.publisher_id
  JOIN books AS b ON b.id = e.book_id
  JOIN stock AS s ON s.isbn = e.isbn
  WHERE p.name = 'Random House';
