--liquibase formatted sql
--changeset srinath:create_proc
create or replace procedure demo_db.dqcoe_sample_proc (master1_id varchar) 
returns master_1 varchar(100)
as
begin
    select branch_id into master_1 from demo_db.branch where branch_id=master1_id;
    DBMS_OUTPUT.put_line ('master : '||master_1);
end;