--liquibase formatted sql
--changeset srinath:create_package
CREATE OR REPLACE PACKAGE DEMO_DB.cust_sal AS 
   PROCEDURE find_sal(c_id INT); 
END cust_sal; 
--rollback DROP PACKAGE DEMO_DB.cust_sal