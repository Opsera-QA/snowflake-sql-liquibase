--liquibase formatted sql
--changeset srinath:create_branch_view runOnChange:true
CREATE OR REPLACE VIEW DEMO_DB.v_employee_branch 
AS
SELECT 
  branch_id, count(emp_id) as "count" FROM DEMO_DB.v_employee group by branch_id;
--rollback DROP VIEW DEMO_DB.v_employee_branch