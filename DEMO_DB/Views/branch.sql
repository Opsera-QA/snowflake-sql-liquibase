--liquibase formatted sql
--changeset srinath:create_branch_view runAlways:true runOnChange:true runWith:sqlplus
CREATE OR REPLACE VIEW DEMO_DB.v_branch 
AS
SELECT 
  branch_id
  FROM DEMO_DB.branch;
  
  EXEC demo_db.dqcoe_sample_proc ("100"); 
--rollback DROP VIEW DEMO_DB.v_branch