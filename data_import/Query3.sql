-- Query 3 -- Counting the no. of lessons by intructor given a specific month

SELECT
	i.id AS Instructor_id,
    i.first_name AS First_name,
    i.last_name AS Last_name,
    COUNT(l.id) AS No_of_lessons
FROM 
    instructor i
JOIN 
    lesson_session l ON i.id = l.instructor_id
WHERE 
    EXTRACT(MONTH FROM l.session_start) = 1 --Specify the currect month     
    AND EXTRACT(YEAR FROM l.session_start) = 2024 --Specify the currect year
GROUP BY 
    i.id
HAVING 
    COUNT(l.id) > 0  --Specify the specific number of lessons to surpass
ORDER BY 
    No_of_lessons DESC;
