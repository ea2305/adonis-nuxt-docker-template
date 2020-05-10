CREATE DATABASE core_database;
\c core_database;

CREATE ROLE core_database;
GRANT ALL ON DATABASE core_database TO core_database;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO core_database;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO core_database;

CREATE EXTENSION IF NOT EXISTS "pgcrypto";
