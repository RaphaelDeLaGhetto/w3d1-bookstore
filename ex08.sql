-- What is the overall average cost and retail price for all books for sale?
-- Return three columns "Average cost", "Average Retail" and "Average Profit"
SELECT round(avg(cost), 2) AS "Average cost",
       round(avg(retail), 2) AS "Average Retail",
       round(avg(retail - cost), 2) AS "Average Profit"
  FROM stock;
