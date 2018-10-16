#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER <<-EOSQL
    CREATE DATABASE "$POSTGRES_TEST_DB";
    GRANT ALL PRIVILEGES ON DATABASE "$POSTGRES_TEST_DB" TO "$POSTGRES_USER";
    CREATE DATABASE "$POSTGRES_DEVELOPMENT_DB";
    GRANT ALL PRIVILEGES ON DATABASE "$POSTGRES_DEVELOPMENT_DB" TO "$POSTGRES_USER";
EOSQL
