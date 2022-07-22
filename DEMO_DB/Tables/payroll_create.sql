--liquibase formatted sql
--changeset praba:create_payroll_table runOnChange:true
CREATE TABLE DEMO_DB.payroll (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  role VARCHAR(40),
  ctc INT
);
--rollback DROP TABLE DEMO_DB.payroll