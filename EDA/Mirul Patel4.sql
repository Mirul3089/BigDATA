--Mirul Patel (N01489347)
--Lab 11
--Question 13

SELECT s.s_last,COUNT(e.grade) as GRADES
FROM student s JOIN enrollment e
ON s.s_id=e.s_id
GROUP BY s.s_last;

--SELECT s_id,c_sec_id 
--FROM enrollment   ---SUBQUERY
--WHERE grade IN(SELECT COUNT(grade) FROM enrollment WHERE grade IS NULL);


   