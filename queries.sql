-- Create database and use it
CREATE DATABASE bank_loan_project;
USE bank_loan_project;

-- View the data
SELECT * FROM finance_1;
SELECT * FROM finance_2;

-- KPI 1: Year-wise Loan Amount
SELECT 
    YEAR(issue_d) AS year_of_issue_d, 
    SUM(loan_amnt) AS total_loan_amount
FROM finance_1
GROUP BY year_of_issue_d
ORDER BY year_of_issue_d;

-- KPI 2: Grade and Sub-grade Wise Revolving Balance
SELECT 
    grade, 
    sub_grade, 
    SUM(revol_bal) AS total_revol_bal
FROM finance_1
INNER JOIN finance_2 ON finance_1.id = finance_2.id
GROUP BY grade, sub_grade
ORDER BY grade, sub_grade;

-- KPI 3: Total Payment by Verification Status
SELECT 
    verification_status,
    CONCAT('$', FORMAT(ROUND(SUM(total_pymnt)/1000000, 2), 2), 'M') AS total_payment
FROM finance_1
INNER JOIN finance_2 ON finance_1.id = finance_2.id
GROUP BY verification_status;

-- KPI 4: Loan Status by State and Last Credit Pull Date
SELECT 
    addr_state, 
    last_credit_pull_d, 
    loan_status
FROM finance_1
INNER JOIN finance_2 ON finance_1.id = finance_2.id
GROUP BY addr_state, last_credit_pull_d, loan_status
ORDER BY last_credit_pull_d;

-- KPI 5: Home Ownership vs. Last Payment Amount
SELECT 
    home_ownership, 
    last_pymnt_d,
    CONCAT('$', FORMAT(ROUND(SUM(last_pymnt_amnt)/1000, 2), 2), 'K') AS total_amount
FROM finance_1
INNER JOIN finance_2 ON finance_1.id = finance_2.id
GROUP BY home_ownership, last_pymnt_d
ORDER BY home_ownership, last_pymnt_d;
