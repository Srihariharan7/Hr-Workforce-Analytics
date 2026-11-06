-- HR EMPLOYEE DATABASE


DROP DATABASE IF EXISTS hr_db;

CREATE DATABASE hr_db CHARACTER SET utf8mb4;
USE hr_db;

CREATE TABLE employees (
  Employee_ID        VARCHAR(10) PRIMARY KEY,
  Department         VARCHAR(50) NOT NULL,
  Job_Role           VARCHAR(80) NOT NULL,
  Location           VARCHAR(50) NOT NULL,
  Hire_Date          DATE NOT NULL,
  Employment_Status  VARCHAR(20) NOT NULL,
  Exit_Date          DATE NULL,
  Annual_Salary      INT,
  Performance_Rating TINYINT,
  Engagement_Score   TINYINT,
  Satisfaction_Score TINYINT,
  Training_Hours     INT,
  INDEX idx_dept (Department), INDEX idx_loc (Location), INDEX idx_status (Employment_Status)
);

INSERT INTO employees (Employee_ID, Department, Job_Role, Location, Hire_Date, Employment_Status, 
Exit_Date, Annual_Salary, Performance_Rating, Engagement_Score, Satisfaction_Score, Training_Hours) VALUES
  ('EMP001', 'HR', 'HR Executive', 'Pune', '2025-04-26', 'Active', NULL, 450000, 2, 1, 5, 5),
  ('EMP002', 'Customer Support', 'Support Executive', 'Pune', '2017-05-03', 'Active', NULL, 370000, 5, 5, 1, 35),
  ('EMP003', 'Finance', 'Finance Manager', 'Mumbai', '2019-06-22', 'Active', NULL, 1100000, 1, 2, 4, 21),
  ('EMP004', 'Marketing', 'SEO Specialist', 'Chennai', '2019-06-01', 'Active', NULL, 450000, 4, 1, 3, 54),
  ('EMP005', 'Operations', 'Operations Manager', 'Kochi', '2019-12-20', 'Active', NULL, 760000, 5, 1, 4, 5),
  ('EMP006', 'Marketing', 'Content Strategist', 'Bengaluru', '2023-06-23', 'Active', NULL, 400000, 2, 3, 1, 54),
  ('EMP007', 'Finance', 'Accountant', 'Delhi', '2021-04-06', 'Active', NULL, 930000, 2, 3, 3, 13),
  ('EMP008', 'Marketing', 'Marketing Executive', 'Pune', '2023-11-01', 'Terminated', '2024-07-23', 1000000, 2, 4, 4, 17),
  ('EMP009', 'Finance', 'Finance Executive', 'Bengaluru', '2026-06-15', 'Active', NULL, 640000, 3, 4, 3, 4),
  ('EMP010', 'Finance', 'Finance Executive', 'Kochi', '2019-05-21', 'Terminated', '2025-03-24', 850000, 2, 3, 2, 15),
  ('EMP011', 'Marketing', 'Marketing Manager', 'Pune', '2023-07-19', 'Active', NULL, 780000, 2, 5, 4, 5),
  ('EMP012', 'Engineering', 'Software Engineer', 'Coimbatore', '2018-09-19', 'Terminated', '2020-10-03', 1420000, 5, 1, 4, 24),
  ('EMP013', 'IT', 'IT Manager', 'Mumbai', '2019-10-27', 'Resigned', '2020-03-12', 490000, 3, 1, 3, 27),
  ('EMP014', 'Sales', 'Business Development Executive', 'Hyderabad', '2017-01-14', 'Terminated', '2025-05-09', 650000, 5, 1, 3, 53),
  ('EMP015', 'Finance', 'Financial Analyst', 'Bengaluru', '2021-03-12', 'Active', NULL, 1040000, 5, 3, 4, 1),
  ('EMP016', 'HR', 'HR Generalist', 'Bengaluru', '2026-04-30', 'Active', NULL, 450000, 2, 5, 1, 5),
  ('EMP017', 'IT', 'IT Support Specialist', 'Kochi', '2025-07-13', 'Resigned', '2025-12-14', 510000, 5, 2, 3, 33),
  ('EMP018', 'Customer Support', 'Support Executive', 'Coimbatore', '2023-01-18', 'Terminated', '2024-06-02', 430000, 3, 4, 5, 28),
  ('EMP019', 'HR', 'Recruiter', 'Bengaluru', '2019-07-10', 'Active', NULL, 510000, 5, 5, 2, 37),
  ('EMP020', 'Finance', 'Accountant', 'Pune', '2017-10-18', 'Terminated', '2025-02-12', 420000, 1, 1, 3, 4),
  ('EMP021', 'Finance', 'Finance Executive', 'Hyderabad', '2024-07-03', 'Active', NULL, 620000, 5, 5, 4, 15),
  ('EMP022', 'IT', 'System Administrator', 'Coimbatore', '2019-02-19', 'Active', NULL, 470000, 3, 4, 4, 29),
  ('EMP023', 'Engineering', 'Software Engineer', 'Delhi', '2017-09-06', 'Active', NULL, 1480000, 1, 2, 2, 12),
  ('EMP024', 'IT', 'IT Support Specialist', 'Kochi', '2021-09-25', 'Active', NULL, 700000, 2, 1, 4, 51),
  ('EMP025', 'HR', 'HR Executive', 'Pune', '2024-04-25', 'Resigned', '2024-08-08', 350000, 2, 4, 4, 30),
  ('EMP026', 'Finance', 'Finance Manager', 'Bengaluru', '2017-08-29', 'Active', NULL, 830000, 4, 3, 4, 18),
  ('EMP027', 'Customer Support', 'Support Team Lead', 'Hyderabad', '2025-03-12', 'Resigned', '2026-05-14', 550000, 2, 3, 2, 3),
  ('EMP028', 'Engineering', 'QA Engineer', 'Kochi', '2017-08-23', 'Active', NULL, 1290000, 5, 5, 2, 3),
  ('EMP029', 'HR', 'Recruiter', 'Pune', '2017-10-08', 'Resigned', '2018-10-11', 730000, 4, 1, 5, 15),
  ('EMP030', 'Engineering', 'Team Lead', 'Delhi', '2017-12-02', 'Active', NULL, 1390000, 3, 2, 3, 15),
  ('EMP031', 'Marketing', 'Marketing Manager', 'Kochi', '2018-06-21', 'Terminated', '2025-12-14', 700000, 3, 1, 1, 29),
  ('EMP032', 'HR', 'HR Executive', 'Mumbai', '2023-01-12', 'Active', NULL, 620000, 2, 3, 1, 56),
  ('EMP033', 'Finance', 'Finance Executive', 'Mumbai', '2020-03-13', 'Active', NULL, 910000, 5, 5, 1, 42),
  ('EMP034', 'Marketing', 'Marketing Executive', 'Chennai', '2018-07-05', 'Active', NULL, 460000, 5, 2, 3, 18),
  ('EMP035', 'Finance', 'Finance Executive', 'Kochi', '2019-04-14', 'Terminated', '2026-08-22', 680000, 3, 1, 1, 40),
  ('EMP036', 'Customer Support', 'Customer Success Associate', 'Hyderabad', '2017-06-30', 'Active', NULL, 450000, 3, 2, 4, 35),
  ('EMP037', 'Customer Support', 'Support Team Lead', 'Hyderabad', '2017-02-09', 'Active', NULL, 280000, 5, 1, 3, 37),
  ('EMP038', 'Sales', 'Business Development Executive', 'Delhi', '2018-06-07', 'Active', NULL, 710000, 1, 3, 2, 43),
  ('EMP039', 'Finance', 'Accountant', 'Hyderabad', '2020-12-19', 'Resigned', '2025-10-08', 1140000, 2, 2, 2, 56),
  ('EMP040', 'Customer Support', 'Support Executive', 'Pune', '2019-01-05', 'Terminated', '2022-12-25', 500000, 3, 2, 1, 24),
  ('EMP041', 'Engineering', 'DevOps Engineer', 'Delhi', '2019-07-01', 'Active', NULL, 1130000, 3, 2, 2, 1),
  ('EMP042', 'Finance', 'Finance Manager', 'Mumbai', '2020-09-06', 'Active', NULL, 430000, 3, 5, 4, 43),
  ('EMP043', 'Operations', 'Operations Executive', 'Mumbai', '2018-04-18', 'Active', NULL, 410000, 1, 1, 5, 27),
  ('EMP044', 'Operations', 'Operations Manager', 'Chennai', '2025-10-27', 'Active', NULL, 570000, 4, 5, 2, 16),
  ('EMP045', 'Engineering', 'DevOps Engineer', 'Pune', '2017-01-07', 'Resigned', '2026-04-23', 1230000, 3, 4, 1, 60),
  ('EMP046', 'Operations', 'Operations Manager', 'Mumbai', '2020-07-09', 'Terminated', '2022-03-01', 760000, 5, 3, 4, 20),
  ('EMP047', 'Customer Support', 'Support Team Lead', 'Coimbatore', '2020-04-26', 'Resigned', '2021-12-28', 360000, 4, 2, 5, 36),
  ('EMP048', 'Marketing', 'Marketing Manager', 'Mumbai', '2023-02-23', 'Active', NULL, 700000, 2, 4, 5, 38),
  ('EMP049', 'Operations', 'Operations Analyst', 'Pune', '2021-12-15', 'Active', NULL, 730000, 5, 4, 2, 42),
  ('EMP050', 'HR', 'HR Generalist', 'Delhi', '2022-10-13', 'Terminated', '2026-07-30', 690000, 1, 2, 3, 14),
  ('EMP051', 'Finance', 'Financial Analyst', 'Kochi', '2017-04-11', 'Active', NULL, 660000, 5, 1, 4, 26),
  ('EMP052', 'Finance', 'Finance Manager', 'Hyderabad', '2022-07-18', 'Active', NULL, 660000, 1, 1, 4, 14),
  ('EMP053', 'Sales', 'Business Development Executive', 'Kochi', '2017-07-25', 'Resigned', '2020-08-08', 470000, 2, 4, 5, 35),
  ('EMP054', 'Operations', 'Operations Analyst', 'Coimbatore', '2023-11-15', 'Terminated', '2026-08-14', 620000, 5, 4, 2, 47),
  ('EMP055', 'IT', 'System Administrator', 'Mumbai', '2019-11-28', 'Active', NULL, 1160000, 5, 4, 2, 17),
  ('EMP056', 'IT', 'IT Support Specialist', 'Mumbai', '2025-01-01', 'Active', NULL, 650000, 3, 3, 5, 5),
  ('EMP057', 'Sales', 'Account Manager', 'Pune', '2019-08-06', 'Active', NULL, 510000, 1, 4, 4, 21),
  ('EMP058', 'IT', 'System Administrator', 'Coimbatore', '2017-09-13', 'Active', NULL, 880000, 5, 1, 5, 24),
  ('EMP059', 'IT', 'IT Support Specialist', 'Coimbatore', '2020-12-11', 'Active', NULL, 840000, 5, 5, 5, 57),
  ('EMP060', 'Finance', 'Finance Manager', 'Kochi', '2019-06-18', 'Active', NULL, 900000, 1, 4, 3, 42),
  ('EMP061', 'Customer Support', 'Support Team Lead', 'Bengaluru', '2018-11-08', 'Active', NULL, 320000, 4, 5, 5, 42),
  ('EMP062', 'Engineering', 'Software Engineer', 'Kochi', '2024-03-17', 'Active', NULL, 720000, 2, 1, 3, 24),
  ('EMP063', 'Operations', 'Operations Executive', 'Coimbatore', '2022-02-06', 'Active', NULL, 510000, 3, 4, 3, 53),
  ('EMP064', 'HR', 'HR Manager', 'Delhi', '2017-03-21', 'Terminated', '2023-07-07', 330000, 2, 1, 1, 48),
  ('EMP065', 'Engineering', 'Data Analyst', 'Hyderabad', '2019-03-28', 'Active', NULL, 1340000, 2, 2, 4, 42),
  ('EMP066', 'HR', 'Recruiter', 'Delhi', '2022-03-20', 'Terminated', '2023-11-24', 790000, 2, 5, 5, 47),
  ('EMP067', 'HR', 'Recruiter', 'Bengaluru', '2020-06-28', 'Active', NULL, 670000, 3, 5, 4, 25),
  ('EMP068', 'Finance', 'Accountant', 'Mumbai', '2023-08-23', 'Terminated', '2025-04-01', 480000, 5, 1, 5, 50),
  ('EMP069', 'Engineering', 'QA Engineer', 'Delhi', '2022-12-23', 'Active', NULL, 1390000, 1, 5, 3, 0),
  ('EMP070', 'Customer Support', 'Customer Success Associate', 'Kochi', '2018-03-09', 'Active', NULL, 470000, 2, 4, 2, 46),
  ('EMP071', 'Marketing', 'Marketing Manager', 'Delhi', '2022-03-20', 'Active', NULL, 660000, 2, 1, 3, 56),
  ('EMP072', 'IT', 'IT Support Specialist', 'Coimbatore', '2025-06-01', 'Active', NULL, 1070000, 3, 1, 4, 54),
  ('EMP073', 'Operations', 'Operations Executive', 'Mumbai', '2022-06-21', 'Active', NULL, 520000, 3, 3, 5, 44),
  ('EMP074', 'Marketing', 'Marketing Executive', 'Pune', '2022-10-18', 'Active', NULL, 420000, 4, 4, 5, 48),
  ('EMP075', 'Finance', 'Finance Manager', 'Bengaluru', '2024-03-30', 'Terminated', '2025-11-12', 920000, 1, 3, 2, 25),
  ('EMP076', 'Finance', 'Finance Executive', 'Delhi', '2024-06-12', 'Resigned', '2025-09-22', 950000, 4, 5, 3, 22),
  ('EMP077', 'IT', 'System Administrator', 'Chennai', '2020-06-09', 'Active', NULL, 640000, 2, 3, 1, 47),
  ('EMP078', 'Sales', 'Account Manager', 'Mumbai', '2019-06-06', 'Terminated', '2025-02-07', 670000, 1, 2, 3, 14),
  ('EMP079', 'Operations', 'Operations Executive', 'Hyderabad', '2020-05-23', 'Active', NULL, 750000, 3, 1, 1, 35),
  ('EMP080', 'Marketing', 'SEO Specialist', 'Bengaluru', '2024-02-26', 'Active', NULL, 450000, 5, 3, 4, 30),
  ('EMP081', 'IT', 'System Administrator', 'Kochi', '2019-01-26', 'Active', NULL, 670000, 1, 1, 4, 31),
  ('EMP082', 'HR', 'HR Executive', 'Mumbai', '2018-09-14', 'Active', NULL, 810000, 1, 2, 1, 35),
  ('EMP083', 'Customer Support', 'Support Team Lead', 'Coimbatore', '2023-09-08', 'Resigned', '2025-03-13', 570000, 4, 4, 3, 55),
  ('EMP084', 'Customer Support', 'Customer Success Associate', 'Chennai', '2023-05-19', 'Resigned', '2023-12-18', 630000, 2, 2, 3, 42),
  ('EMP085', 'HR', 'Recruiter', 'Chennai', '2019-09-10', 'Active', NULL, 650000, 2, 1, 4, 28),
  ('EMP086', 'IT', 'System Administrator', 'Mumbai', '2017-05-14', 'Active', NULL, 710000, 4, 1, 2, 59),
  ('EMP087', 'Marketing', 'SEO Specialist', 'Hyderabad', '2021-10-08', 'Active', NULL, 600000, 3, 2, 1, 3),
  ('EMP088', 'Sales', 'Sales Manager', 'Chennai', '2023-09-04', 'Terminated', '2025-07-16', 880000, 4, 3, 4, 60),
  ('EMP089', 'Marketing', 'Marketing Manager', 'Coimbatore', '2021-11-29', 'Active', NULL, 370000, 3, 5, 3, 1),
  ('EMP090', 'HR', 'Recruiter', 'Bengaluru', '2024-07-24', 'Resigned', '2026-06-15', 900000, 3, 5, 1, 48),
  ('EMP091', 'Sales', 'Business Development Executive', 'Hyderabad', '2022-10-27', 'Terminated', '2025-07-18', 670000, 5, 4, 4, 5),
  ('EMP092', 'IT', 'System Administrator', 'Chennai', '2021-07-31', 'Active', NULL, 760000, 2, 3, 4, 44),
  ('EMP093', 'IT', 'System Administrator', 'Bengaluru', '2024-06-06', 'Active', NULL, 1050000, 4, 1, 3, 16),
  ('EMP094', 'Operations', 'Operations Executive', 'Bengaluru', '2025-08-31', 'Active', NULL, 850000, 5, 4, 4, 3),
  ('EMP095', 'Finance', 'Finance Executive', 'Kochi', '2023-12-26', 'Active', NULL, 1150000, 1, 2, 3, 35),
  ('EMP096', 'Sales', 'Sales Manager', 'Bengaluru', '2021-11-30', 'Terminated', '2024-11-16', 470000, 5, 2, 2, 19),
  ('EMP097', 'Engineering', 'Team Lead', 'Chennai', '2021-07-30', 'Active', NULL, 830000, 4, 1, 2, 31),
  ('EMP098', 'Marketing', 'Content Strategist', 'Pune', '2021-08-29', 'Active', NULL, 920000, 4, 5, 2, 24),
  ('EMP099', 'Finance', 'Financial Analyst', 'Delhi', '2017-10-13', 'Active', NULL, 880000, 5, 3, 1, 18),
  ('EMP100', 'Marketing', 'Marketing Manager', 'Kochi', '2018-09-01', 'Active', NULL, 1000000, 3, 3, 5, 48);



-- ---------- Views (one per dashboard chart) ----------

CREATE VIEW vw_kpis AS
SELECT COUNT(*) AS total_employees,
       SUM(Employment_Status='Active') AS active_employees,
       ROUND(100*SUM(Employment_Status<>'Active')/COUNT(*),1) AS attrition_pct,
       ROUND(AVG(Annual_Salary)) AS avg_salary,
       ROUND(AVG(Engagement_Score),2) AS avg_engagement,
       ROUND(AVG(Satisfaction_Score),2) AS avg_satisfaction,
       ROUND(AVG(Training_Hours),1) AS avg_training_hours,
       ROUND(AVG(DATEDIFF(COALESCE(Exit_Date,CURDATE()),Hire_Date))/365.25,1) AS avg_tenure_years
FROM employees;

CREATE VIEW vw_by_department AS
SELECT Department, COUNT(*) AS headcount,
       SUM(Employment_Status='Active') AS active,
       SUM(Employment_Status<>'Active') AS employees_left,
       ROUND(100*SUM(Employment_Status<>'Active')/COUNT(*),1) AS attrition_pct,
       ROUND(AVG(Engagement_Score),2) AS avg_engagement,
       ROUND(AVG(Satisfaction_Score),2) AS avg_satisfaction,
       ROUND(AVG(Annual_Salary)) AS avg_salary
FROM employees GROUP BY Department;


CREATE VIEW vw_by_status   AS SELECT Employment_Status, COUNT(*) AS employees FROM employees GROUP BY Employment_Status;
CREATE VIEW vw_by_location AS SELECT Location, COUNT(*) AS headcount FROM employees GROUP BY Location;
CREATE VIEW vw_hiring_trend AS SELECT YEAR(Hire_Date) AS hire_year, COUNT(*) AS hires FROM employees GROUP BY YEAR(Hire_Date);
CREATE VIEW vw_performance AS SELECT Performance_Rating, COUNT(*) AS employees FROM employees GROUP BY Performance_Rating;
CREATE VIEW vw_salary_band AS
SELECT CASE WHEN Annual_Salary<500000 THEN '1) Below 5L' WHEN Annual_Salary<800000 THEN '2) 5-8L'
            WHEN Annual_Salary<1100000 THEN '3) 8-11L' ELSE '4) 11L+' END AS salary_band,
       COUNT(*) AS employees
FROM employees GROUP BY salary_band;

CREATE VIEW vw_salary_by_role AS
SELECT Job_Role, ROUND(AVG(Annual_Salary)) AS avg_salary, COUNT(*) AS headcount
FROM employees GROUP BY Job_Role;

-- ---------- Quick check ----------

SELECT COUNT(*) FROM hr_db.employees;                       -- 100
SELECT * FROM hr_db.vw_kpis;                                -- total 100, active 67, attrition 33.0
SELECT * FROM hr_db.vw_by_department ORDER BY attrition_pct DESC;