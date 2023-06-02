--liquibase formatted sql
--changeset srinath:create_proc runOnChange:true
create or replace procedure demo_db.dqcoe_sample_proc (master1_id varchar) 
as 
master_1 nvarchar2(100);
BEGIN
    select branch_id into master_1 from demo_db.branch1 where branch_id = master1_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No such branch!'); 
end;
/