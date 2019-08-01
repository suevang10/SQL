-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/qlONpA
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE Dept_manager (
    dept_no VARCHAR(4)  NOT NULL ,
    emp_no INT  NOT NULL ,
    from_data VARCHAR(30)  NOT NULL ,
    to_data VARCHAR(30)  NOT NULL 
);

CREATE TABLE employees (
    emp_no INTEGER  NOT NULL ,
    birth_date VARCHAR(30)  NOT NULL ,
    first_name VARCHAR(30)  NOT NULL ,
    last_name VARCHAR(30)  NOT NULL ,
    gender VARCHAR(1)  NOT NULL ,
    hire_date VARCHAR(30)  NOT NULL ,
    CONSTRAINT PK_employees PRIMARY KEY (
        emp_no 
    )
);

CREATE TABLE Titles (
    emp_no INT  NOT NULL ,
    title VARCHAR(30)  NOT NULL ,
    from_date VARCHAR(30)  NOT NULL ,
    to_date VARCHAR(30)  NOT NULL 
);

CREATE TABLE salaries (
    emp_no INT  NOT NULL ,
    salary INT  NOT NULL ,
    from_date VARCHAR(30)  NOT NULL ,
    to_date VARCHAR(30)  NOT NULL 
);

CREATE TABLE dept_emp (
    emp_no INT  NOT NULL ,
    dept_no VARCHAR(4)  NOT NULL ,
    from_date VARCHAR(30)  NOT NULL ,
    to_date VARCHAR(30)  NOT NULL 
);

CREATE TABLE departments (
    dept_no INT  NOT NULL ,
    dept_name VARCHAR(30)  NOT NULL ,
    CONSTRAINT PK_departments PRIMARY KEY  (
        dept_no 
    )
);

--ALTER TABLE dept_emp ADD CONSTRAINT FK_dept_emp_emp_no FOREIGN KEY(emp_no)
--REFERENCES employees (emp_no);

--ALTER TABLE dept_emp ADD CONSTRAINT FK_dept_emp_dept_no FOREIGN KEY(dept_no)
--REFERENCES departments (dept_no);

--ALTER TABLE Dept_manager ADD CONSTRAINT FK_Dept_manager_dept_no FOREIGN KEY(dept_no)
--REFERENCES departments (dept_no)

--ALTER TABLE Dept_manager Add CONSTRAINT FK_Dept_manager_dept_no

--ALTER TABLE Dept_manager ADD CONSTRAINT FK_Dept_manager_emp_no FOREIGN KEY(emp_no)
--REFERENCES employees (emp_no)

--ALTER TABLE Dept_manager add CONSTRAINT FK_Dept_manager_emp_no

--ALTER TABLE Titles ADD CONSTRAINT FK_Titles_emp_no FOREIGN KEY(emp_no)
--REFERENCES employees (emp_no)

--ALTER TABLE Titles add CONSTRAINT FK_Titles_emp_no

--ALTER TABLE salaries ADD CONSTRAINT FK_salaries_emp_no FOREIGN KEY(emp_no) REFERENCES employees (emp_no)

--ALTER TABLE salaries CHECK CONSTRAINT FK_salaries_emp_no

--ALTER TABLE dept_emp CHECK CONSTRAINT FK_dept_emp_emp_no

--ALTER TABLE dept_emp CHECK CONSTRAINT FK_dept_emp_dept_no

