SQL-Challenge by Jose Moncada (11/19/2024)
This repository includes a set of SQL challenges focused on Data Engineering and Data Analysis. The objective of these challenges is to demonstrate proficiency in SQL queries, table creation, and data manipulation within a relational database.

Challenges Overview
1. Data Engineering
In this section, I designed and created the necessary tables for the SQL database schema. The following tables were created:

Titles Table
Stores the job titles for employees.

Employees Table
Contains employee details, including birth date, name, sex, hire date, and a foreign key to the titles table.

Departments Table
Contains department information, including the department number and name.

Employee_Departments Table
Represents a many-to-many relationship between employees and departments, as employees can belong to multiple departments.

Department_Managers Table
Defines which employees are managers for each department.

Salaries Table
Stores salary details for each employee.

2. Data Analysis
In this section, I created a series of queries to extract meaningful insights from the relational database. The queries involve joining multiple tables, filtering, grouping, and sorting data.

Database Setup
Before running the above queries, ensure that the database is set up with the appropriate schema. The tables can be created by running the SQL statements under Data Engineering.

Importing Data from CSV Files
After creating the tables, you need to import the data for each table from the CSV files provided in the CSV File Folder. Each CSV corresponds to a specific table in the database:

titles.csv → Import data into the titles table.
employees.csv → Import data into the employees table.
departments.csv → Import data into the departments table.
employee_departments.csv → Import data into the employee_departments table.
department_managers.csv → Import data into the department_managers table.
salaries.csv → Import data into the salaries table.

Getting Started
Clone this repository to your local machine.
Set up a PostgreSQL (or compatible) database.
Run the table creation scripts to set up the database schema.
Import the data from the CSV files into the corresponding tables.
Execute the data analysis queries to gather insights from the data.
