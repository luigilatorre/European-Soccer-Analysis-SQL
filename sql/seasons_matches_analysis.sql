SELECT COUNT(DISTINCT season)
FROM sql-sandbox-418719.Final_Exercise.match

SELECT m.season,l.name,COUNT(*) AS count_match
FROM sql-sandbox-418719.Final_Exercise.match m
JOIN sql-sandbox-418719.Final_Exercise.leagues l ON m.league_id = l.id
GROUP BY m.season,l.name
ORDER BY count_match
