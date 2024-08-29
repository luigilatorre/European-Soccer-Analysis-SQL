WITH ranked_teams AS (
    SELECT
        season,
        name_team,
        SUM(tot_goals) AS total_goals,
        RANK() OVER (PARTITION BY season ORDER BY SUM(tot_goals) DESC) as rank
    FROM (
        SELECT m.season, t.team_long_name AS name_team, m.home_team_goal AS tot_goals
        FROM sql-sandbox-418719.Final_Exercise.match m
        JOIN sql-sandbox-418719.Final_Exercise.team t ON m.home_team_api_id = t.team_api_id
        UNION ALL
        SELECT m.season, t.team_long_name, m.away_team_goal
        FROM sql-sandbox-418719.Final_Exercise.match m
        JOIN sql-sandbox-418719.Final_Exercise.team t ON m.away_team_api_id = t.team_api_id
    ) as combined
    GROUP BY season, name_team
)

SELECT season, name_team, total_goals
FROM ranked_teams
WHERE rank = 1
ORDER BY total_goals DESC
