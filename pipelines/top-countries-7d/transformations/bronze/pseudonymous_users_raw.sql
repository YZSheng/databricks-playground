-- Bronze Layer: Ingest raw data from source table
-- This streaming table reads incrementally from the source

CREATE OR REFRESH STREAMING TABLE pseudonymous_users_raw
COMMENT "Raw pseudonymous users data ingested from workspace.personal_site.pseudonymous_users"
AS
SELECT *
FROM STREAM(workspace.personal_site.pseudonymous_users);
