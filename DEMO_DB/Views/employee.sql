--liquibase formatted sql
--changeset srinath:create_employee_view runOnChange:true runwith:sqlplus
SET SERVEROUTPUT ON;

SET DEFINE OFF;

declare
    l_today date := sysdate;
begin
    dbms_output.put_line(
           'today is '||to_char(l_today,'Day'));
exception when others then
    dbms_output.put_line(sqlerrm);
end;
/