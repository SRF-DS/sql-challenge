-- Create Employees table
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
	emp_title VARCHAR(10),
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

-- Create Departments table
CREATE TABLE Departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL
);

-- Create Department Employees table
CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create Department Managers table
CREATE TABLE Dept_Manager (
    dept_no CHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Create Salaries table
CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (emp_no)
);

-- Create Titles table
CREATE TABLE Titles (
    title_id VARCHAR(15) NOT NULL,
    title VARCHAR(50) NOT NULL,
    --FOREIGN KEY (title_id) REFERENCES Employees(emp_title),
    PRIMARY KEY (title_id, title)
);