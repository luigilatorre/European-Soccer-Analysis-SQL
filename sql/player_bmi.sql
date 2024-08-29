CREATE TABLE sql-sandbox-418719.Final_Exercise.PlayerBMI AS
SELECT
   				 id,
  				 player_api_id,
   				 player_name,
   				 birthday,
  				 weight / 2.205 AS kg_weight,
    				 height / 100 AS m_height,
    				(weight / 2.205) / ((height / 100) * (height / 100)) AS BMI
FROM sql-sandbox-418719.Final_Exercise.player

SELECT * FROM sql-sandbox-418719.Final_Exercise.PlayerBMI
WHERE BMI BETWEEN 18.5 AND 24.9


