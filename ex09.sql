-- Which book ID has the most pieces in stock?
-- Hints:
-- 1. Use an aggregate function combined with LIMIT and ORDER BY clauses.
-- 2. No need to join with the books table since we just want the ID which is
--    already in the editions table.
SELECT e.book_id, sum(s.stock) FROM editions AS e
  JOIN stock AS s ON s.isbn = e.isbn
  GROUP BY e.book_id
  ORDER BY sum DESC
  LIMIT 1;
