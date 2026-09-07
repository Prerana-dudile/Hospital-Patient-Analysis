# 🏥 Hospital Patient Analysis

## 📌 Project Overview

This project analyzes hospital patient records to understand patient demographics, medical conditions, treatment costs, hospital stay duration, patient outcomes, readmissions, insurance claims, and patient satisfaction.

The project follows an end-to-end data analytics workflow:

**Raw Data → Data Cleaning → SQL Analysis → Data Visualization → Business Insights**

---

## 🎯 Project Objectives

- Analyze patients across different medical conditions.
- Understand patient demographics such as age and gender.
- Analyze patient distribution across states.
- Study hospital length of stay.
- Analyze treatment costs by medical condition.
- Identify the most expensive treatments.
- Analyze patient outcomes and readmissions.
- Analyze insurance claims.
- Understand patient satisfaction.
- Analyze the relationship between length of stay and treatment cost.
- Use SQL to answer business-related questions.
- Create visualizations to communicate analytical findings.

---

## 📊 Dataset

The dataset contains hospital patient records with information about patients, medical conditions, medications, admission and discharge dates, hospital stay duration, outcomes, satisfaction, insurance claims, and treatment costs.

### Dataset Features

- Patient_ID
- Age
- Gender
- Condition
- Medication
- Admission_Date
- Discharge_Date
- Patient_State
- Year_of_Admission
- Length_of_Stay
- Readmission
- Outcome
- Satisfaction
- Insurance_Claimed
- Total_Cost

The dataset contains **984 patient records** and **15 columns**.

---

## 🛠️ Tools and Technologies

### Python
- Python
- Pandas
- Matplotlib
- Jupyter Notebook

### SQL
- PostgreSQL
- pgAdmin 4

### Development
- VS Code
- GitHub

---

## 🔄 Project Workflow

### 1. Data Collection

The original dataset was preserved as raw data and kept unchanged for reference.

### 2. Data Cleaning

Pandas was used to prepare the data for analysis.

The cleaning process included:

- Loading the dataset.
- Inspecting the dataset structure.
- Checking data types.
- Checking missing values.
- Checking duplicate records.
- Examining unique values.
- Checking numerical columns.
- Converting date columns into the appropriate format.
- Saving the cleaned dataset as a CSV file.

### 3. SQL Analysis

The cleaned dataset was imported into PostgreSQL for analytical querying.

SQL was used to analyze:

- Patient counts by medical condition.
- Patient counts by gender.
- Patient admissions by year.
- Patient distribution by state.
- Average age by condition.
- Average length of stay.
- Total and average treatment costs.
- Patient outcomes.
- Readmissions.
- Insurance claims.
- Patient satisfaction.
- Most expensive patients.
- Conditions with the longest average stay.
- Treatment cost by length of stay.
- Patient age groups.
- Patients with above-average treatment costs.
- Top conditions by total treatment cost.
- Ranking conditions using window functions.

### SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate Functions
- CASE WHEN
- Subqueries
- RANK()
- Window Functions

---

## 📈 Data Visualization

Python and Matplotlib were used to create visualizations to identify patterns and relationships in the data.

The visualizations include:

1. Patients by Medical Condition
2. Patients by Gender
3. Patients by State
4. Age Distribution / Age Groups
5. Length of Stay Distribution
6. Average Length of Stay by Medical Condition
7. Total Treatment Cost by Medical Condition
8. Average Treatment Cost by Medical Condition
9. Patient Outcomes
10. Readmission Analysis
11. Insurance Claims
12. Length of Stay vs Treatment Cost
13. Patient Satisfaction Distribution
14. Satisfaction by Medical Condition
15. Patient Age Group Analysis

---

## 💡 Key Findings

The analysis helped identify patterns in:

- Patient distribution across medical conditions and states.
- Differences in treatment costs between medical conditions.
- Hospital length of stay across different conditions.
- Patient outcomes and readmission patterns.
- Insurance claim patterns.
- Patient satisfaction levels.
- The relationship between hospital stay duration and treatment cost.

---

## 📌 Conclusion

This project demonstrates an end-to-end data analytics workflow using **Python, Pandas, PostgreSQL, SQL, and Matplotlib**.

The analysis provided insights into patient demographics, medical conditions, treatment costs, hospital stays, outcomes, readmissions, insurance claims, and patient satisfaction.

Through this project, I strengthened my practical skills in **data cleaning, SQL analysis, exploratory data analysis, data visualization, and business-oriented data interpretation**.

---

## 📁 Project Structure


Hospital Patient Analysis/
│
├── Datasets/
│   ├── cleaned_data/
│   │   └── hospital_patient_data_cleaned.csv
│   │
│   └── raw_data/
│       └── Hospital_patient_raw_data.csv
│
├── Python/
│   ├── hospital_patient_analysis.ipynb
│   └── hospital_patient_visualization.ipynb
│
├── Sql/
│   └── hospital_analysis.sql
│
└── README.md

