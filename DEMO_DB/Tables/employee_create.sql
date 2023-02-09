--liquibase formatted sql
--changeset srinath:create_employee_table
CREATE TABLE DEMO_DB.employee (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
   sex VARCHAR(1),
   branch_id INT
);
--rollback DROP TABLE DEMO_DB.employee