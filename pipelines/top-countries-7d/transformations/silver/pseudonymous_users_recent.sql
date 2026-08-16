-- Silver Layer: Filter for last 7 days of data
-- occurrence_date is in YYYYMMDD format

CREATE OR REFRESH STREAMING TABLE pseudonymous_users_recent
COMMENT "Pseudonymous users from the last 7 days"
AS
SELECT 
  pseudo_user_id,
  geo,
  occurrence_date,
  device,
  user_ltv
FROM STREAM(pseudonymous_users_raw)
WHERE occurrence_date >= date_format(current_date() - INTERVAL 7 DAYS, 'yyyyMMdd');
