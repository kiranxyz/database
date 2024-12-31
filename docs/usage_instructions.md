Prerequisites

Install PostgreSQL or any compatible SQL database system.

Install a database client (e.g., pgAdmin, DBeaver, or psql CLI).

Setup Steps

Clone the Repository:

git clone https://github.com/kiranxyz/database.git
cd database

Create a Database:

CREATE DATABASE ecommerce_db;

Load the Schema:
Execute the create_tables.sql file to set up the schema.

psql -d ecommerce_db -f sql/create_tables.sql

Insert Sample Data:
Populate the database with sample data using insert_data.sql.

psql -d ecommerce_db -f sql/insert_data.sql

Run Sample Queries:
Use sample_queries.sql to explore the database and perform analysis.

psql -d ecommerce_db -f sql/sample_queries.sql