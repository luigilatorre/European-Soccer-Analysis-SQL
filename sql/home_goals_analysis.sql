SELECT m.season,l.name,
    COUNT(m.home_team_goal) as tot_goals,
    MIN(m.home_team_goal) as min_goals,
    MAX(m.home_team_goal) as max_goals,
    AVG(m.home_team_goal) as avg_goals,
    (MAX(m.home_team_goal) - MIN(m.home_team_goal))/2 as mid_range_goals,
    SUM(m.home_team_goal) as sum_goals
FROM sql-sandbox-418719.Final_Exercise.match m
JOIN sql-sandbox-418719.Final_Exercise.leagues l ON m.league_id = l.id
GROUP BY m.season,l.name
ORDER BY season asc
