-- Hardcover vs Paperback
-- Editions has a column called "type". Include the print type but instead of
-- just displaying "h" or "p" (the values in the column) output the human 
-- readable types ("hardcover" and "paperback" accordingly)
-- Example use CASE:
-- https://www.commandprompt.com/ppbook/x5802.htm#USINGCASEEXPRESSIONSINSTATEMENTS
SELECT *,
  CASE WHEN type = 'p' THEN 'paperback'
       WHEN type = 'h' THEN 'hardcover'
  END AS binding_type
  FROM editions
  
