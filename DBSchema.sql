CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title    VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_no       INT PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL REFERENCES titles (title_id),
    birth_date   DATE NOT NULL,
    first_name   VARCHAR(50) NOT NULL,
    last_name    VARCHAR(50) NOT NULL,
    sex          VARCHAR(1) NOT NULL,
    hire_date    DATE NOT NULL
);


CREATE TABLE departments (
    dept_no   VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no  INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no  INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

