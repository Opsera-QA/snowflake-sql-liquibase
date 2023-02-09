--liquibase formatted sql
--changeset srinath:create_employee_view runOnChange:true
DROP VIEW DEMO_DB.v_employee CASCADE;

CREATE OR REPLACE VIEW DEMO_DB.v_employee 
AS
SELECT emp_id,
  first_name,
    sex,
  branch_id FROM DEMO_DB.employee;
--rollback DROP VIEW DEMO_DB.v_employee