--liquibase formatted sql
--changeset srinath:sequence endDelimiter:/ runAlways:true runOnChange:true
CREATE SEQUENCE "DEMO_DB"."SEQ1" 
START WITH 1
MAXVALUE 9999999999999999999999999999 
MINVALUE 1 
INCREMENT BY 1  
CACHE 20
NOORDER CYCLE 
/
