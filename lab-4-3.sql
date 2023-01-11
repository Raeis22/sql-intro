-- Who hit the most home runs in 2019, and what team did they play for?
SELECT teams.name, players.first_name, players.last_name, MAX(stats.home_runs)
FROM stats 
    INNER JOIN players ON players.id = stats.player_id 
    INNER JOIN teams ON teams.id = stats.team_id
WHERE teams.year = 2019
--跟答案不一样，会答出唯一结论吗 
--Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


