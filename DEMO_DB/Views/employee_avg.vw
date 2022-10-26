--liquibase formatted sql
--changeset srinath:create_employee_branch_ratio_view runOnChange:true
CREATE OR REPLACE VIEW DEMO_DB.v_employee_branch_ratio
AS
SELECT 
  branch_id, (select avg("count") from DEMO_DB.v_employee_branch b where b.branch_id = e.branch_id) avg FROM DEMO_DB.v_employee e group by branch_id;
--rollback DROP VIEW DEMO_DB.v_employee_branch_ratio