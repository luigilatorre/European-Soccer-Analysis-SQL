SELECT season, name_team, SUM(tot_goals) AS total_goals
FROM (
    SELECT m.season, t.team_long_name AS name_team, m.home_team_goal AS tot_goals
    FROM sql-sandbox-418719.Final_Exercise.match m
    JOIN sql-sandbox-418719.Final_Exercise.team t ON m.home_team_api_id = t.team_api_id
    UNION ALL
    SELECT m.season, t.team_long_name, m.away_team_goal
    FROM sql-sandbox-418719.Final_Exercise.match m
    JOIN sql-sandbox-418719.Final_Exercise.team t ON m.away_team_api_id = t.team_api_id
) AS combined
WHERE season = "2015/2016"
GROUP BY season, name_team
ORDER BY total_goals DESC
