--liquibase formatted sql
--changeset srinath:create_employee_table

CREATE OR REPLACE TRIGGER DEMO_DB.employee_audit_trg
    AFTER 
    UPDATE OR DELETE 
    ON DEMO_DB.employee
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   -- determine the transaction type
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;
END;
/
--rollback DROP TRIGGER DEMO_DB.employee_audit_trg