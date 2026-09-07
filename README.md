# 🏥 Hospital Patient Analysis

An end-to-end data analytics project that analyzes hospital patient records to uncover insights into patient demographics, medical conditions, treatment costs, hospital stays, outcomes, readmissions, insurance claims, and patient satisfaction.

## 📌 Project Overview

This project follows a complete data analytics workflow:

**Raw Data → Data Cleaning → SQL Analysis → Data Visualization → Business Insights**

The project demonstrates practical experience with **Python, Pandas, PostgreSQL, SQL, Jupyter Notebook, and Matplotlib**.

---

## 🎯 Project Objectives

* Analyze patients across different medical conditions
* Understand patient demographics such as age and gender
* Analyze patient distribution across states
* Study hospital length of stay
* Analyze treatment costs by medical condition
* Identify high-cost treatments and patients
* Analyze patient outcomes and readmissions
* Analyze insurance claim patterns
* Understand patient satisfaction
* Examine the relationship between length of stay and treatment cost
* Use SQL to answer business-oriented questions
* Create visualizations to communicate analytical findings

---

## 📊 Dataset

The dataset contains hospital patient records covering demographics, medical conditions, medications, admission and discharge dates, hospital stay duration, outcomes, satisfaction, insurance claims, and treatment costs.

### Dataset Information

* **Records:** 984 patients
* **Columns:** 15

### Dataset Features

| Feature           | Description                          |
| ----------------- | ------------------------------------ |
| Patient_ID        | Unique patient identifier            |
| Age               | Patient age                          |
| Gender            | Patient gender                       |
| Condition         | Medical condition                    |
| Medication        | Medication associated with treatment |
| Admission_Date    | Date of hospital admission           |
| Discharge_Date    | Date of hospital discharge           |
| Patient_State     | Patient state                        |
| Year_of_Admission | Year of admission                    |
| Length_of_Stay    | Number of days spent in hospital     |
| Readmission       | Readmission status                   |
| Outcome           | Patient outcome                      |
| Satisfaction      | Patient satisfaction score           |
| Insurance_Claimed | Insurance claim status               |
| Total_Cost        | Total treatment cost                 |

---

## 🛠️ Tools and Technologies

### Programming & Data Analysis

* Python
* Pandas
* Matplotlib
* Jupyter Notebook

### Database & SQL

* PostgreSQL
* pgAdmin 4
* SQL

### Development

* VS Code
* Git
* GitHub

---

## 🔄 Project Workflow

### 1. Data Collection

The original dataset was preserved as raw data and kept unchanged for reference.

### 2. Data Cleaning

Pandas was used to prepare the dataset for analysis.

The cleaning process included:

* Loading the dataset
* Inspecting dataset structure
* Checking data types
* Checking missing values
* Checking duplicate records
* Examining unique values
* Checking numerical columns
* Converting date columns into appropriate formats
* Saving the cleaned dataset as CSV

### 3. SQL Analysis

The cleaned dataset was imported into PostgreSQL for analytical querying.

SQL was used to analyze:

* Patient counts by medical condition
* Patient counts by gender
* Patient admissions by year
* Patient distribution by state
* Average age by condition
* Average length of stay
* Total treatment cost
* Average treatment cost
* Patient outcomes
* Readmissions
* Insurance claims
* Patient satisfaction
* Most expensive patients
* Conditions with the longest average stay
* Treatment cost by length of stay
* Patient age groups
* Patients with above-average treatment costs
* Top conditions by total treatment cost
* Condition rankings using window functions

---

## 🧠 SQL Concepts Used

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Aggregate Functions
* `CASE WHEN`
* Subqueries
* `RANK()`
* Window Functions

---

## 📈 Data Visualization

Python and Matplotlib were used to visualize patterns and relationships within the data.

Visualizations include:

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

The analysis helped identify patterns related to:

* Patient distribution across medical conditions and states
* Differences in treatment costs between medical conditions
* Hospital length of stay across different conditions
* Patient outcomes and readmission patterns
* Insurance claim patterns
* Patient satisfaction levels
* The relationship between hospital stay duration and treatment cost

---

## 📁 Project Structure

```text
Hospital-Patient-Analysis/
│
├── datasets/
│   ├── cleaned_data/
│   │   └── hospital_patient_data_cleaned.csv
│   │
│   └── raw_data/
│       └── Hospital_patient_raw_data.csv
│
├── python/
│   ├── hospital_patient_analysis.ipynb
│   └── hospital_patient_visualization.ipynb
│
├── sql/
│   └── hospital_analysis.sql
│
└── README.md
```

---

## 🚀 How to Use This Project

### 1. Clone the repository

```bash
git clone https://github.com/Prerana-dudile/Hospital-Patient-Analysis.git
```

### 2. Navigate to the project

```bash
cd Hospital-Patient-Analysis
```

### 3. Open the notebooks

Open the files inside the `python/` folder using Jupyter Notebook or VS Code.

### 4. SQL Analysis

Import the cleaned CSV dataset into PostgreSQL and execute the queries available in:

```text
sql/hospital_analysis.sql
```

---

## 📌 Conclusion

This project demonstrates an end-to-end data analytics workflow using **Python, Pandas, PostgreSQL, SQL, Jupyter Notebook, and Matplotlib**.

Through this project, I strengthened my practical skills in:

* Data cleaning
* Exploratory data analysis
* SQL querying
* PostgreSQL
* Data visualization
* Statistical analysis
* Business-oriented data interpretation

---
