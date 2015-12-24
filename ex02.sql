-- Instead of just their ISBN number, fetch their Book Title as well. You should
-- still have the same 3 results but with more information. But instead of just
-- one column, we should have 2 columns in the result set.
SELECT isbn, title FROM editions AS e
  JOIN publishers AS p ON p.id = e.publisher_id
  JOIN books as b ON b.id = e.book_id
  WHERE p.name = 'Random House';
