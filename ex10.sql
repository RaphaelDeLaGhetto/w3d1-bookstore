-- List author ID along with the full name and the number of books they have
-- written. Output 3 columns: "ID", "Full name" and "Number of Books"
SELECT a.id AS "ID",
       (a.first_name || ' ' || a.last_name) AS "Full name",
       count(b.author_id) AS "Number of Books"
  FROM authors AS a
  JOIN books AS b ON b.author_id = a.id
  GROUP BY a.id;
