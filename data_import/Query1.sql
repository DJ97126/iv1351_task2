ANALYZE EXPLAIN;

EXPLAIN WITH all_lessons AS(
	SELECT 
		ls.session_start,
		'individual' AS lesson_type
	FROM lesson_session ls
	JOIN individual_lesson il ON ls.lesson_id = il.db_lesson_id
	UNION ALL
	SELECT 
		ls.session_start,
		'group' AS lesson_type
	FROM lesson_session ls
	JOIN group_lesson gl ON ls.lesson_id = gl.db_lesson_id
	UNION ALL
	SELECT 
		ls.session_start,
		'ensemble' AS lesson_type
	FROM lesson_session ls
	JOIN ensemble e ON ls.lesson_id = e.db_lesson_id
)

SELECT
	TO_CHAR(session_start, 'Mon') AS Month,
	COUNT (*) AS total,
	COUNT (CASE WHEN lesson_type = 'individual' THEN 1 END) AS individual,
	COUNT (CASE WHEN lesson_type = 'group' THEN 1 END) AS group,
	COUNT (CASE WHEN lesson_type = 'ensemble' THEN 1 END) AS ensemble
FROM all_lessons
GROUP BY TO_CHAR(session_start, 'Mon'), DATE_TRUNC('Mon', session_start)
ORDER BY DATE_TRUNC('Mon', session_start);