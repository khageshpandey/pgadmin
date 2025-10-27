for /F %%S in (schemas.txt) do @(
  echo SET search_path TO %%S;
  type scripttorun.sql
) | "C:\Program Files\pgAdmin 4\v6\runtime\psql" -h testaurora.cep1jlobois2.eu-central-1.rds.amazonaws.com -U postgres -p 5432 -d dev > error.txt 2>&1

