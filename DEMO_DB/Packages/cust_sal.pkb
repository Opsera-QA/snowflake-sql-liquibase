--liquibase formatted sql
--changeset srinath:create_package_body
CREATE OR REPLACE PACKAGE BODY DEMO_DB.cust_sal AS 
   
   PROCEDURE find_sal(c_id INT) IS 
   c_sal INT; 
   BEGIN 
      SELECT branch_id INTO c_sal 
      FROM DEMO_DB.employee
      WHERE emp_id = c_id; 
   END find_sal; 
END cust_sal; 
--rollback DROP PACKAGE BODY DEMO_DB.cust_sal