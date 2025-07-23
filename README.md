# 🏥 A&E Operational Insights

A data analysis project exploring Accident & Emergency (A&E) service activity using SQL and Excel. The project focuses on attendances, waiting times, and reattendance trends to generate actionable insights for healthcare performance evaluation. 
---

## 🛠 Tools & Technologies

- **SQL Server / SSMS** – Data querying, joining, filtering, and transformation
- **Microsoft Excel** – Data Cleaning and formatting
---

## 📁 Data Tables Used

The dataset used in this project was sourced from the official NHS publication:

**Hospital Accident and Emergency Activity, 2023-24 — ECDS Summary Report Tables (XLSX)**  
Published by NHS England

From this Excel file, the following three tables were extracted and analysed:

- **Attendances**: Monthly and annual A&E attendance counts and admission percentages.
- **Waiting Times**: Yearly breakdown of attendances by wait time categories (≤4 hrs, ≥4 hrs, ≥12 hrs).
- **Reattendances**: Monthly and annual counts of unplanned reattendances within 7 days, along with total unplanned attendances and reattendance rates.

The data supports performance analysis and operational trend identification within emergency care services across England.
---

## 🔧 Steps Performed

The following steps were carried out to clean, transform, analyse, and visualise the A&E dataset:

### 1. Data Preparation
- Imported the original NHS Excel file into SQL Server.
- Identified and extracted three key tables: `attendances`, `waiting_times`, and `reattendances`.
- Cleaned raw data:(Using Excel)
  - Removed thousands separators (commas) from numerical fields.
  - Standardised `reporting_period` values (e.g., converted text dates to proper date format).

### 2. SQL-Based Data Analysis
- Wrote and executed SQL queries to extract insights, including:
  - Monthly admission trends and percentage admitted.
  - Monthly and yearly reattendance rates.
  - Relationship between attendances and reattendances.
  - Waiting time distributions by category (≤4, ≥4, >12 hours).
  - Detection of periods with high waiting times but low attendances.
---

## 📂 Folder Structure

```bash
.
├── README.md
├── Hospital Accident and Emergency Activity, 2023-24; ECDS Summary Report Tables.xlsx
├── Data Tables/
│   ├── Attendances.xlsx
│   ├── WaitingTimes.xlsx
│   └── Reattendances.xlsx
├── A&E Data Analysis.sql

