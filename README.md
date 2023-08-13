# sql-challenge
Research the remains of Employee Database of a fictional company and create tables.

## Steps and Files
1. Data Modelling - Create the Entity Relationship Diagram
    ERD_FromQuickDB_SQL_Challenge.png - This file is the Entity Relationship Diagram (ERD) of the tables created using the quickdatabase tool.

2. Data Engineering - Create the tables and load data
    sql-challenge_CreateTables.sql - This file has the queries to create the tables with constraints as shown in the ERD. After creating the ERD, did the Export option in the quickdatabase tool to generate this file. In PgAdmin, executed these queries to create the tables.

    data folder with 6 csv files (departments, dept_emp, dept_manager, employees, salaries, titles) was provided for the challenge. Each file has data for the corresponding table. To avoid error, load the data in the tables in the order in which the tables were created. The files have header data.

3. Data Analysis - Get the data for each question based on the conditions mentioned.
    sql-challenge_queries.sql - This file has the queries that retrieve the data matching the conditions mentioned in each question.
    