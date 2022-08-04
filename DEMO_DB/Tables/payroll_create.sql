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

--changeset praba:create_payroll_table:1
alter table DEMO_DB.payroll add column designation VARCHAR(40)
--rollback ALTER TABLE DEMO_DB.payroll DROP COLUMN designation;