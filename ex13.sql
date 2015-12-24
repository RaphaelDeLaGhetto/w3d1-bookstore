-- For each publisher, list their average book sale price, number of editions
-- published.
SELECT p.name AS "Publisher",
       round(avg(s.retail), 2) AS "Average sale price",
       count(e.publisher_id) AS "Editions"
  FROM publishers AS p
  JOIN editions AS e ON e.publisher_id = p.id
  JOIN stock AS s ON s.isbn = e.isbn
  GROUP BY p.name
