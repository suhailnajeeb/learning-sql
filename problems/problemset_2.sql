-- Statements for corrections:

DROP TABLE JOBS;

CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(25) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));


DROP TABLE DEPARTMENTS;

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15),
                            MANAGER_ID CHAR(9) NOT NULL,
                            LOC_ID CHAR(9),
                            PRIMARY KEY (MANAGER_ID));

-- Query 1: Select all Employees whose address in Elgin,IL.

SELECT * from EMPLOYEES
    WHERE ADDRESS LIKE 'Elgin,IL';

-- Query 2: Retrieve all employees who were born in the 1970s

SELECT * from EMPLOYEES
    WHERE B_DATE LIKE '197%';

-- Query 3: Retrieve all employees in Department 5 whose salary is between 60000 and 70000

SELECT * from EMPLOYEES
    WHERE DEP_ID = 5 and SALARY between 60000 and 70000;

-- Query 4A: Retrieve a list of employees oredered by department ID.

SELECT * from EMPLOYEES
    ORDER BY DEP_ID;

-- Query 4B: Retrieve a list of employees ordered in descending order by department ID
-- and within each department ordered alphabetically in descending order
-- by last name

SELECT * from EMPLOYEES
    ORDER BY DEP_ID DESC, L_NAME DESC;

-- Query 5A: For each department ID, retrieve the number of employees in the department

SELECT DEP_ID, COUNT(*) from EMPLOYEES
    GROUP BY DEP_ID;

-- Query 5B: For each department, retrieve the number of employees in the department,
-- and the average employees salary in the department

SELECT DEP_ID, COUNT(*), AVG(SALARY) from EMPLOYEES
    GROUP BY DEP_ID;

-- Query 5C: Label the computed columns in 5B as "NUM_EMPLOYEES" and "AVG_SALARY"

SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY from EMPLOYEES
    GROUP BY DEP_ID;

-- Query 5D: In Query 5C order the result set by Average Salary

SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY from EMPLOYEES
    GROUP BY DEP_ID ORDER BY AVG_SALARY;

-- Query 5E: In Query 5D, limit the result to departments with fewer than 4 employees

SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY from EMPLOYEES
    GROUP BY DEP_ID HAVING COUNT(*) < 4 ORDER BY AVG_SALARY;

-- Query 6: Similar to 4B but instead of department ID use department name. 
-- Retrieve a list of employees ordered by department name, and within
-- each department, ordered alphabetically in descending order by last name.

select D.DEP_NAME , E.F_NAME, E.L_NAME
from EMPLOYEES as E, DEPARTMENTS as D
where E.DEP_ID = D.DEPT_ID_DEP
order by D.DEP_NAME, E.L_NAME desc ;