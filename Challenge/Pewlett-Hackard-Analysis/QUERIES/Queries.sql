-- Creating Tables

CREATE TABLE departments (
    "dept_no" varchar(4)   NOT NULL,
    "dept_name" varchar(40)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     ),
	UNIQUE (dept_name)
);

CREATE TABLE employees (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE salaries (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     ),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE dept_emp (
    "emp_no" int   NOT NULL,
    "dept_no" varchar   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     ),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
    "dept_no" varchar(4)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_Managers" PRIMARY KEY (
        "dept_no","emp_no"
     ),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE Titles (  
emp_no INT NOT NULL,  
title VARCHAR (40),  
from_date DATE NOT NULL,  
to_date DATE NOT NULL,  
FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
           PRIMARY KEY (emp_no, from_date)
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM Salaries;
SELECT * FROM titles;

--Retrieve employees and titles (1952 and 1955)
SELECT emp.emp_no,
       	   emp.first_name,
       	   emp.last_name,
       	   tt.title,
       	   tt.from_date,
       	tt.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles as tt
ON emp.emp_no = tt.emp_no
WHERE birth_date between '1952-01-01' and '1955-12-31'
ORDER BY emp.emp_no ASC;

SELECT * FROM retirement_titles;

-- Delete duplicate rows
SELECT DISTINCT ON (emp_no)
   emp_no,
   first_name,
   last_name,
   title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

--Get the number of titles
SELECT COUNT(*),
	title
INTO retiring_title
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_title; 

--Mentorship Eligibility
SELECT 
DISTINCT ON (ee.emp_no)
     ee.emp_no,
	   ee.first_name,
	   ee.last_name,
	   ee.birth_date,
	   dept.from_date,
	   dept.to_date,
	   tt.title
INTO mentorship_eligibilty
FROM employees as ee
JOIN dept_emp as dept ON ee.emp_no = dept.emp_no
JOIN titles as tt ON ee.emp_no = tt.emp_no
WHERE dept.to_date = '9999-01-01'
AND birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY ee.emp_no ASC;

SELECT * FROM mentorship_eligibilty;



