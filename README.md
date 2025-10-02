# Task-7
MySQL Foreign Key Setup
Overview
This guide demonstrates the process of establishing foreign key relationships using MySQL Workbench to maintain referential integrity between tables, ensuring that related data across tables is properly linked and safeguarded from inconsistent changes.

Steps
Create Parent and Child Tables

Begin by creating the necessary tables in your database. The parent table holds unique records (primary key), while the child table references these records via a foreign key.

Example structure:

Parent Table: departments

Child Table: employees

Write SQL for Table Creation

Use the following SQL commands to define each table:

sql
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT
);
Both tables must use compatible data types for key columns (dept_id).

Open Table Editor and Add Foreign Key

In MySQL Workbench, right-click the child table (employees) and select "Alter Table".

Go to the Foreign Keys tab.

Click the last row of the Foreign Key Name list and enter a descriptive name (e.g., fk_employees_departments).

Select the column in the child table (dept_id) and choose the parent table (departments) and referenced column (dept_id).

Set desired options for actions such as "ON DELETE" and "ON UPDATE" (e.g., RESTRICT, CASCADE).

Configure and Apply Foreign Key Constraint

Review the generated SQL for accuracy.

Click "Apply" to execute and establish the relationship.

MySQL will enforce referential integrity, blocking orphaned records and maintaining links automatically.

Verify Foreign Key in EER Diagram

Access the EER diagram within Workbench to visually confirm the relationship.

Lines connecting tables indicate foreign key relationships, helping quickly review schema design.

Optionally, use SQL queries to inspect constraints:

sql
SHOW CREATE TABLE employees;
Test Referential Integrity and Troubleshooting

Try inserting and deleting data in both tables to confirm constraints are enforced.

If errors occur (data type mismatch, missing referenced value), adjust table design or constraint definitions.

Ensure both referenced and referencing columns are non-null and have the same data type.

Example SQL
sql
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
This syntax sets dept_id in employees as a foreign key referencing dept_id in departments, enforcing referential integrity in your schema.


