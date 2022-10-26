--liquibase formatted sql
--changeset srinath:create_branch_view runOnChange:true
CREATE OR REPLACE VIEW DEMO_DB.v_branch 
AS
SELECT 
  branch_id
  FROM DEMO_DB.branch;
--rollback DROP VIEW DEMO_DB.v_branch