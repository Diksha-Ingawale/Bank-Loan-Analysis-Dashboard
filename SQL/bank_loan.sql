create database Bank_Loan;
use Bank_Loan;
SET SQL_SAFE_UPDATES = 0;

select * from financial_loan;
ALTER TABLE financial_loan CHANGE COLUMN `ï»¿id` id INT;

select * from financial_loan;
DESCRIBE financial_loan;

#A.	BANK LOAN REPORT | SUMMARY | KPI’s:

SELECT COUNT(id) AS Total_Applications FROM financial_loan;

UPDATE financial_loan 
SET issue_date = STR_TO_DATE(issue_date, '%d-%m-%Y');

SELECT COUNT(id) AS MTD_Total_Applications FROM financial_loan 
WHERE MONTH(issue_date) = 12;

SELECT COUNT(id) AS PMTD_Total_Applications FROM financial_loan
WHERE MONTH(issue_date) = 11

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM financial_loan;

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_date) = 12

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM financial_loan
WHERE MONTH(issue_date) = 11


SELECT SUM(total_payment) AS Total_Amount_Collected FROM financial_loan

SELECT SUM(total_payment) AS MTD_Total_Amount_Collected FROM financial_loan
WHERE MONTH(issue_date) = 12

SELECT SUM(total_payment) AS PMTD_Total_Amount_Collected FROM financial_loan
WHERE MONTH(issue_date) = 11

#AVERAGE INTEREST

SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM financial_loan;

SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM financial_loan
WHERE MONTH(issue_date) = 12;

SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM financial_loan
WHERE MONTH(issue_date) = 11;

#AVERAGE DTI

SELECT AVG(dti)*100 AS Avg_DTI FROM financial_loan;

SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_date) = 12;

SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM financial_loan
WHERE MONTH(issue_date) = 11;


#GOOD LOAN ISSUED

SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM financial_loan;


SELECT COUNT(id) AS Good_Loan_Applications FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


SELECT SUM(total_payment) AS Good_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


#BAD LOAN ISSUED
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan


SELECT COUNT(id) AS Bad_Loan_Applications FROM financial_loan
WHERE loan_status = 'Charged Off'


SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM financial_loan
WHERE loan_status = 'Charged Off'


SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Charged Off'

#LOAN STATUS
SELECT
        loan_status,
        COUNT(id) AS Total_Loan_Applications,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        financial_loan
    GROUP BY
        loan_status;
        
        
SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

#########
# B. BANK LOAN REPORT | OVERVIEW

SELECT 
	MONTH(issue_date) AS Month_Number, 
	MONTHNAME(issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY MONTH(issue_date), MONTHNAME(issue_date)
ORDER BY MONTH(issue_date)


# STATE
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state


#TERM

SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term


# EMPLOYEE LENGTH

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length


# PURPOSE
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose


# HOME OWNERSHIP

SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership




