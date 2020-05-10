CREATE DATABASE testing_database;
\c testing_database;

CREATE ROLE testing_database;
GRANT ALL ON DATABASE testing_database TO testing_database;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO testing_database;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO testing_database;

CREATE EXTENSION IF NOT EXISTS "pgcrypto";
