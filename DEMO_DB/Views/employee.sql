--liquibase formatted sql
--changeset srinath:create_employee_view runOnChange:true stripComments:false runwith:sqlplus
/*******
* comment 1
*comment2
******/
SET DEFINE OFF;
SET SERVEROUTPUT ON;
declare
    l_today date := sysdate;
begin
    dbms_output.put_line(
           'today is - '||to_char(l_today,'Day'));
exception when others then
    dbms_output.put_line(sqlerrm);
end;
/