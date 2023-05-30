--Mirul Patel (N01489347)
--Assignment 2
--Question 10

SELECT MAX(retail) as "Retail price"
FROM books NATURAL JOIN author
NATURAL JOIN bookauthor
WHERE lname= 'WHITE'
AND fname= 'LISA';
