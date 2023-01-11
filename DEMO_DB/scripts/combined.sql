--liquibase formatted sql
--changeset srinath:sql_plsql endDelimiter:/ runAlways:true runOnChange:true
select * from dual
/
declare
    l_today date := sysdate;
begin
/*comments*/
    dbms_output.put_line(
           'today is '||to_char(l_today,'Day'));
exception when others then
    dbms_output.put_line(sqlerrm);
end;
/
