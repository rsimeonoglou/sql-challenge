CREATE TABLE "departments" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(10) NOT NULL,
    "title" VARCHAR   NOT NULL,
	Primary Key (title_id)
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VARCHAR NOT NULL,
	foreign key (emp_title_id) references titles(title_id),
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date"    NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" int NOT NULL,
	Foreign Key (emp_no) references employees(emp_no),
    "dept_no" VARCHAR(10) NOT NULL,
	Foreign Key (dept_no) references departments(dept_no),
	Primary Key (emp_no, dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10)  NOT NULL,
	Foreign Key (dept_no) references departments(dept_no),
    "emp_no" int   NOT NULL,
	Primary Key (dept_no,emp_no)
);

CREATE TABLE "salaries" (
    "emp_no" int NOT NULL,
	foreign Key (emp_no) references employees(emp_no),
    "salary" float NOT NULL,
	Primary Key (emp_no)
);

