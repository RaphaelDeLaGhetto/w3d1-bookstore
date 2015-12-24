-- Order the result set above by number of books so that authors with most 
-- number of books appear atop the list (descending order).
SELECT a.id AS "ID",
       (a.first_name || ' ' || a.last_name) AS "Full name",
       count(b.author_id) AS "Number of Books"
  FROM authors AS a
  JOIN books AS b ON b.author_id = a.id
  GROUP BY a.id
  ORDER BY "Number of Books" DESC;
