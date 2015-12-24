-- List books that have both paperback and hardcover editions. That means at least one edition of the book in both formats.
--
-- The result contains four books:
--
-- The Shining
-- Dune
-- 2001: A Space Odyssey
-- The Cat in the Hat
SELECT title FROM books
  JOIN (SELECT book_id FROM editions WHERE type = 'p'
        INTERSECT
        SELECT book_id FROM editions WHERE type = 'h') AS ids
  ON ids.book_id = id;
