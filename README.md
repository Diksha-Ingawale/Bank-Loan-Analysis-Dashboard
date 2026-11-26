# 🏦 Bank Loan Analysis Dashboard | SQL, Power BI

## 📌 Project Overview

The **Bank Loan Analysis Dashboard** is a data analytics and business intelligence project developed using SQL and Microsoft Power BI to analyze bank loan data, monitor lending performance, and evaluate financial risk.

The project provides insights into loan applications, funded amounts, total amount received, interest rates, debt-to-income (DTI) ratios, and loan repayment status.

SQL is used to query and analyze the financial loan dataset, while Power BI is used to develop interactive dashboards that help visualize key performance indicators (KPIs) and business trends.

## 🎯 Project Objectives

- Analyze overall bank loan performance.
- Monitor total loan applications and funded amounts.
- Evaluate total amounts received from borrowers.
- Analyze average interest rates and debt-to-income (DTI) ratios.
- Identify good loans and bad loans.
- Understand loan distribution by state, term, employee length, purpose, and home ownership.
- Compare Month-to-Date (MTD) and Previous Month-to-Date (PMTD) performance.
- Generate meaningful insights to support data-driven lending decisions.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL | Data querying and analysis |
| Microsoft Power BI | Interactive dashboard development |
| Power Query | Data cleaning and transformation |
| DAX | KPI calculations and measures |
| Microsoft Excel / CSV | Dataset storage and preparation |

## 📊 Key Performance Indicators (KPIs)

The dashboard tracks the following important financial metrics:

- **Total Loan Applications:** Total number of loan applications received.
- **Total Funded Amount:** Total amount of loans issued to borrowers.
- **Total Amount Received:** Total payments collected from borrowers.
- **Average Interest Rate:** Average interest rate across issued loans.
- **Average DTI:** Average debt-to-income ratio of borrowers.

The dashboard also provides MTD and Month-over-Month (MoM) comparisons for important financial metrics.

## 📈 Dashboard Pages & Features

### 1. Summary Dashboard

Provides a high-level overview of overall bank loan performance.

**Key Features:**
- Displays important loan performance KPIs.
- Highlights Good Loan and Bad Loan performance.
- Shows loan applications, funded amounts, and amounts received.
- Provides an overview of loan status and lending performance.
- Helps monitor overall financial performance.

### 2. Overview Dashboard

Provides detailed visual analysis of loan applications across different categories.

**Key Visualizations:**

- **Monthly Analysis:** Loan applications by month.
- **Geographical Analysis:** State-wise loan application distribution using maps.
- **Loan Term Analysis:** Loan applications by 36-month and 60-month terms.
- **Employee Length Analysis:** Loan applications based on employee experience.
- **Loan Purpose Analysis:** Loan distribution across different purposes.
- **Home Ownership Analysis:** Loan applications by home ownership status.

**Interactive Filters:**
- Select Measure
- State
- Grade
- Good vs Bad Loan

### 3. Details Dashboard

Provides detailed loan-level information to support deeper analysis of individual loan records and their characteristics.

## 🗄️ SQL Analysis

SQL was used to perform data exploration, data preparation, aggregations, and financial KPI calculations.

**Key SQL Operations:**

- Database and table exploration.
- Data type inspection and date conversion.
- COUNT(), SUM(), and AVG() aggregate functions.
- GROUP BY and ORDER BY operations.
- CASE statements for loan classification.
- Conditional filtering using WHERE.
- Month-to-Date (MTD) and Previous Month-to-Date (PMTD) calculations.
- Good Loan and Bad Loan performance analysis.

**Key Analysis Areas:**

| Analysis | Description |
|---|---|
| Loan Applications | Total and monthly loan application counts |
| Funded Amount | Total loan amount issued |
| Amount Received | Total payment collected |
| Interest Rate | Average interest rate analysis |
| DTI | Average debt-to-income ratio |
| Good Loans | Fully Paid and Current loans |
| Bad Loans | Charged Off loans |
| Loan Status | Performance analysis by loan status |
| State Analysis | Loan distribution by state |
| Term Analysis | Loan applications by loan duration |
| Employee Length | Loan distribution by employment experience |
| Purpose Analysis | Loan applications by purpose |
| Home Ownership | Loan distribution by ownership category |

## 💡 Key Business Insights

The dashboard helps identify:

- Overall loan application and funding performance.
- The proportion of good loans and bad loans.
- Differences in lending performance across loan statuses.
- Monthly trends in loan applications.
- States contributing to loan applications and funding.
- Popular loan terms and borrowing purposes.
- Relationships between borrower employment length and loan applications.
- Loan distribution across different home ownership categories.

## 📁 Project Structure

```text
Bank-Loan-Analysis-Dashboard/
│
├── Dashboard/
│   └── Bank_Loan_Dashboard.pbix
│
├── Dataset/
│   └── financial_loan.csv
│
├── SQL/
│   └── bank_loan.sql
│
├── Screenshots/
│   ├── Summary.png
│   ├── Overview.png
│   └── Details.png
│
└── README.md
```

## 🚀 How to Use This Project

1. Clone or download this GitHub repository.
2. Open the `SQL` folder to explore the SQL queries.
3. Import the loan dataset into MySQL.
4. Execute the SQL queries to perform loan data analysis.
5. Open the `Dashboard` folder.
6. Open the Power BI `.pbix` file using Microsoft Power BI Desktop.
7. If required, update the dataset source and refresh the dashboard.
8. Explore the interactive dashboard using available filters and visualizations.

## 📌 Project Outcome

Successfully developed a bank loan analytics solution using SQL and Power BI to evaluate loan performance, monitor financial KPIs, analyze good and bad loans, and identify lending trends across multiple business dimensions.

This project demonstrates practical skills in SQL querying, data analysis, financial KPI calculations, business intelligence, and interactive dashboard development.

## 👩‍💻 Author

**Diksha Ingawale**

Aspiring Data Analyst | Data Science Enthusiast

- GitHub: [Diksha-Ingawale](https://github.com/Diksha-Ingawale)

---

⭐ If you find this project useful, feel free to explore the repository!
