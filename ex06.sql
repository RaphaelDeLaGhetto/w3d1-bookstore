-- List all book titles along with their publication dates (column on the
-- editions dates) That's 2 columns: "title" and "publication"
--
-- Important Notes: * Certain books (such as "Learning Python") don't have any
-- editions but we still want to see those books in the results. They just
-- shouldn't have a publication date associated with them. * Certain other books
-- (such as "Dune") have multiple editions and they will be repeated multiple
-- times in the result set.
SELECT b.title, e.publication FROM books AS b
  LEFT OUTER JOIN editions AS e ON b.id = e.book_id;
