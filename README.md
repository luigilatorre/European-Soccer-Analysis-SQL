# Data Analysis with SQL: European Soccer Database

## Overview
This project demonstrates advanced SQL analysis techniques using the European Soccer Database. It explores various soccer statistics across different leagues and seasons, showcasing data manipulation, aggregation, and insight extraction skills.

## Dataset
The analysis is based on the following CSV files:
- `leagues.csv`
- `match.csv`
- `player.csv`
- `team.csv`

## Project Structure
```
european-soccer-analysis/
├── data/
│   ├── leagues.csv
│   ├── match.csv
│   ├── player.csv
│   ├── team.csv
├── sql/
│   ├── days_calculation.sql
│   ├── home_goals_analysis.sql
│   ├── seasons_matches_analysis.sql
│   ├── player_bmi.sql
│   ├── top_scoring_team.sql
│   ├── season_top_teams.sql
│   └── pair_combinations.sql
├── README.md
└── schema.png
```

## Tasks and Findings

### 1. Dataset Setup
- **Objective**: Create a dataset in Google BigQuery and load the CSV files as separate tables.

### 2. Schema Design
- **Objective**: Design a schema representing relationships between tables.
- **Visualization**:
    !https://lucid.app/lucidchart/d18319bf-1fc3-4f07-a395-69998a2fe3dd/edit?invitationId=inv_3302cf3d-4667-44e5-9889-c564235a1d4c&page=0_0#
- **Details**: Includes Primary keys (PK), Foreign keys (FK), and table dimensions.

### 3. Data Analysis

#### Task 3: Time Span Analysis
- **Objective**: Calculate the number of days between the oldest and most recent match.
- **File**: [`sql/days_calculation.sql`](./sql/days_calculation.sql)
- **Result**: 2868 days

#### Task 4: Home Goals Analysis
- **Objective**: Analyze home goals per season and league.
- **File**: [`sql/home_goals_analysis.sql`](./sql/home_goals_analysis.sql)
- **Key Finding**: England Premier League 2009/2010 had the highest total with 645 goals.

#### Task 5: Seasons and Matches Analysis
- **Objective**: Identify unique seasons and analyze match counts per league.
- **File**: [`sql/seasons_matches_analysis.sql`](./sql/seasons_matches_analysis.sql)
- **Observation**: Inconsistency detected in the Belgium Jupiler League 2013/2014 with only 12 matches.

#### Task 6: Player BMI Analysis
- **Objective**: Create a new table for player BMI analysis.
- **File**: [`sql/player_bmi.sql`](./sql/player_bmi.sql)
- **Findings**:
  - Optimal BMI Count: 10,197 players
  - Non-Optimal BMI Count: 863 players

#### Task 8: Top Scoring Team
- **Objective**: Identify the top-scoring team in the most recent season.
- **File**: [`sql/top_scoring_team.sql`](./sql/top_scoring_team.sql)
- **Result**: FC Barcelona with 112 goals in 2015/2016.

#### Task 9: Season Top Teams
- **Objective**: Rank teams by total goals per season.
- **File**: [`sql/season_top_teams.sql`](./sql/season_top_teams.sql)
- **Top Performer**: Real Madrid FC with 121 goals in 2011/2012.

#### Task 10: Team Pair Combinations
- **Objective**: Generate pair combinations of top 10 teams.
- **File**: [`sql/pair_combinations.sql`](./sql/pair_combinations.sql)
- **Result**: 45 unique combinations.

## Conclusion
This project demonstrates proficiency in SQL for sports data analysis. It showcases the ability to extract meaningful insights from a soccer database, revealing trends in team performance, player health statistics, and league dynamics.

## Tools Used
- Google BigQuery
- SQL
- Lucidchart (for schema visualization)
   
