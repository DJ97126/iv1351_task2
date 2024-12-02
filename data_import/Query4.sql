SELECT DISTINCT
	TO_CHAR(b.date, 'Day') AS Day,
	e.genre AS Genre,
	CASE 
		WHEN e.max_student - COUNT(b.date) = 0 THEN 'No seats'
		WHEN e.max_student - COUNT(b.date) < 3 THEN '1 or 2 seats'
		WHEN e.max_student - COUNT(b.date) > 2 THEN 'Many seats'
		else (e.max_student - COUNT(b.date))::TEXT
	END AS No_of_free_seats
FROM 
	ensemble e
JOIN 
	booking b ON e.db_lesson_id = b.db_lesson_id
GROUP BY 
    TO_CHAR(b.date, 'Day'), e.genre, e.max_student
ORDER BY 
    Day;

