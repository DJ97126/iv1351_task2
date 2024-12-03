-- Query 2 -- Counting siblings
SELECT 
    no_of_siblings,
    COUNT(*) AS No_of_students
FROM (
    SELECT 
        s.sibling_count - 1 AS number_of_siblings,
        CASE 
            WHEN s.sibling_count - 1 = 0 THEN '0'
            WHEN s.sibling_count - 1 = 1 THEN '1'
	    WHEN s.sibling_count - 1 = 2 THEN '2'
	    ELSE '3 or more siblings'
	END AS no_of_siblings
    FROM 
        student t
    JOIN 
        (SELECT 
             family_id, 
             COUNT(*) AS sibling_count
         FROM 
             student
         GROUP BY 
             family_id) s
    ON 
        t.family_id = s.family_id) AS categorized
GROUP BY 
    no_of_siblings
ORDER BY 
    no_of_students DESC;
