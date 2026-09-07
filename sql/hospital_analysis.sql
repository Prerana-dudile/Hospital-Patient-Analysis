CREATE TABLE hospital_patients (
    patient_id INTEGER,
    age INTEGER,
    gender VARCHAR(20),
    condition VARCHAR(100),
    medication VARCHAR(100),
    admission_date DATE,
    discharge_date DATE,
    patient_state VARCHAR(100),
    year_of_admission INTEGER,
    length_of_stay INTEGER,
    readmission VARCHAR(20),
    outcome VARCHAR(100),
    satisfaction INTEGER,
    insurance_claimed VARCHAR(20),
    total_cost NUMERIC
);

select *
from hospital_patients
limit 10;

SELECT COUNT(*)
FROM hospital_patients;

SELECT
    COUNT(*) AS total_rows,
    COUNT(admission_date) AS admission_date_present,
    COUNT(discharge_date) AS discharge_date_present
FROM hospital_patients;

SELECT
    MIN(admission_date) AS earliest_admission,
    MAX(admission_date) AS latest_admission,
    MIN(discharge_date) AS earliest_discharge,
    MAX(discharge_date) AS latest_discharge
FROM hospital_patients;


-- Q1. How many patients are there for each medical condition?
Select count(*) as patient_count, condition
from hospital_patients
group by condition
order by patient_count desc;

-- Q2.How many patients are there for each gender?
Select count(*) as total_patients , gender
from hospital_patients
group by gender;

-- Q.3 How many patients were admitted in each year?
SELECT
    year_of_admission,
    COUNT(*) AS total_patients
FROM hospital_patients
GROUP BY year_of_admission
ORDER BY year_of_admission;

-- Q4.How many patients are there in each state?
select count(*) as patient_count , patient_state
from hospital_patients
group by patient_state
order by patient_count desc;

-- Q5.What is the average age of patients for each medical condition?
SELECT
    condition,
    ROUND(AVG(age), 2) AS average_age
FROM hospital_patients
GROUP BY condition;

-- Q6.What is the average length of stay for each medical condition?
SELECT
    condition,
    ROUND(AVG(length_of_stay), 2) AS average_length_of_stay
FROM hospital_patients
GROUP BY condition;

-- Q7.What is the total hospital cost for each medical condition?
SELECT
    condition,
    SUM(total_cost) AS total_treatment_cost
FROM hospital_patients
GROUP BY condition
ORDER BY total_treatment_cost DESC;

-- Q8.What is the average treatment cost for each medical condition?
SELECT
    condition,
    AVG(total_cost) AS average_of_treatment_cost
FROM hospital_patients
GROUP BY condition
ORDER BY average_of_treatment_cost DESC;

-- Q9.How many patients had each type of outcome?
SELECT
    COUNT(*) AS total_patients,
    outcome
FROM hospital_patients
GROUP BY outcome
ORDER BY total_patients DESC;

-- Q10.How many patients were readmitted vs not readmitted?
SELECT
    readmission,
    COUNT(*) AS total_patients
FROM hospital_patients
GROUP BY readmission
ORDER BY total_patients DESC;

-- Q11.How many patients claimed insurance vs did not claim insurance?
SELECT insurance_claimed, 
       COUNT(*) AS total_patients
FROM hospital_patients
GROUP BY  insurance_claimed
ORDER BY  total_patients DESC;

-- Q12.Which medical conditions have the highest average patient satisfaction?
SELECT
    condition,
    ROUND(AVG(satisfaction), 2) AS average_satisfaction
FROM hospital_patients
GROUP BY condition
ORDER BY average_satisfaction DESC;

-- Q13.Which 5 patients had the highest treatment costs?
SELECT
    patient_id,
    age,
    gender,
    condition,
    total_cost
FROM hospital_patients
ORDER BY total_cost DESC
LIMIT 5;

-- Q14.Which medical condition has the longest average hospital stay?
SELECT
    condition,
    ROUND(AVG(length_of_stay), 2) AS average_length_of_stay
FROM hospital_patients
GROUP BY condition
ORDER BY average_length_of_stay DESC
LIMIT 1;

-- Q15.What is the average treatment cost for each length of stay?
SELECT
    length_of_stay,
    ROUND(AVG(total_cost), 2) AS average_treatment_cost,
    COUNT(*) AS patient_count
FROM hospital_patients
GROUP BY length_of_stay
ORDER BY length_of_stay;

-- Q16.Categorize patients into Young, Middle Age, and Senior.
SELECT
    patient_id,
    age,
    CASE
        WHEN age < 40 THEN 'Young'
        WHEN age BETWEEN 40 AND 59 THEN 'Middle Age'
        ELSE 'Senior'
    END AS age_group
FROM hospital_patients;

-- Q17.Find patients whose treatment cost is higher than the overall average treatment cost.
SELECT
    patient_id,
    condition,
    total_cost
FROM hospital_patients
WHERE total_cost > (
    SELECT AVG(total_cost)
    FROM hospital_patients
)
ORDER BY total_cost DESC;

-- Q18.Which 3 medical conditions generated the highest total treatment cost?
SELECT
    condition,
    SUM(total_cost) AS total_treatment_cost
FROM hospital_patients
GROUP BY condition
ORDER BY total_treatment_cost DESC
LIMIT 3;

-- Q19.Rank medical conditions from highest to lowest based on total treatment cost.
SELECT
    condition,
    SUM(total_cost) AS total_treatment_cost,
    RANK() OVER (
        ORDER BY SUM(total_cost) DESC
    ) AS cost_rank
FROM hospital_patients
GROUP BY condition
ORDER BY cost_rank;

-- Q20.For each medical condition, find:
-- Number of patients
-- Average treatment cost
-- Average length of stay
-- Rank conditions by average treatment cost.
SELECT
    condition,
    COUNT(*) AS patient_count,
    ROUND(AVG(total_cost), 2) AS average_treatment_cost,
    ROUND(AVG(length_of_stay), 2) AS average_length_of_stay,
    RANK() OVER (
        ORDER BY AVG(total_cost) DESC
    ) AS cost_rank
FROM hospital_patients
GROUP BY condition
ORDER BY cost_rank;