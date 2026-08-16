-- Gold Layer: Aggregate user counts by country for the last 7 days
-- This is a materialized view that aggregates the streaming silver table

CREATE OR REFRESH MATERIALIZED VIEW top_countries_7d
COMMENT "Top countries by user count in the last 7 days"
AS
SELECT 
  geo.country,
  COUNT(DISTINCT pseudo_user_id) AS user_count,
  MAX(occurrence_date) AS latest_date
FROM pseudonymous_users_recent
GROUP BY ALL
ORDER BY user_count DESC;