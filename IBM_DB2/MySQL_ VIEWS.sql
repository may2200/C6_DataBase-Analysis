
-- /////////////// Create EMPLOYEES Mysql Database //////////////////////

-- //////////// 1. VIEWS //////////////////////

CREATE VIEW EMPSALARY AS
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
FROM EMPLOYEES;

SELECT * FROM EMPSALARY;

CREATE OR REPLACE VIEW EMPSALARY AS
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, JOB_TITLE,
MIN_SALARY, MAX_SALARY
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

SELECT * FROM EMPSALARY;

DROP VIEW EMPSALARY;

SELECT * FROM EMPSALARY;


-- //////////// Practice  //////////////////////

CREATE VIEW EMP_DEPT AS
SELECT EMP_ID, F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES;

CREATE OR REPLACE VIEW EMP_DEPT AS
SELECT EMP_ID, F_NAME, L_NAME, DEP_NAME
FROM EMPLOYEES, DEPARTMENTS
WHERE EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP;

DROP VIEW EMP_DEPT