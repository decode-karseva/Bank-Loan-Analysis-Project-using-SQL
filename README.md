# Bank-Loan-Analysis-Project-using-SQL
Description
This project analyzes bank loan data using SQL queries on two datasets (Finance1 and Finance2). It calculates key performance indicators (KPIs) such as year-wise loan amounts, grade-wise revolving balances, total payments by verification status, state-wise loan statuses, and home ownership versus last payment date statistics. The project demonstrates data import, cleaning, joining, aggregation, and formatting techniques in MySQL.
Project Overview
Import loan datasets into MySQL and verify data completeness.
Use SQL queries to calculate KPIs for financial insights.
Combine data from multiple tables using joins.
Use aggregate functions (SUM, COUNT), grouping (GROUP BY), and date functions (YEAR()).
Format results for better readability (rounding, currency formatting).
Prepare data for visualization and dashboard creation.
Objectives
Perform year-wise loan amount analysis.
Calculate grade and subgrade-wise revolving balances.
Analyze total payments by verification status.
Report loan status by state and last credit pull date.
Examine home ownership against last payment date and amount.
How to Use
Import the provided CSV datasets into your MySQL database.
Run the SQL queries in the queries.sql file to generate KPIs.
Modify queries as needed for custom analysis or visualization.
SQL Query Highlights
Use INNER JOIN to combine Finance1 and Finance2 on common ID.
Use YEAR(issue_date) to extract year from date columns.
Use SUM() for aggregating loan amounts and payments.
Use ROUND() and FORMAT() for better output presentation.
Requirements
MySQL or compatible SQL database.
Basic knowledge of SQL querying and database management.
