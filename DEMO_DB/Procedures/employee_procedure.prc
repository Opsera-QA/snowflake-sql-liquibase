--liquibase formatted sql
--changeset srinath:create_proc
create or replace procedure demo_db.dqcoe_sample_proc (master1_id varchar) 
returns varchar
as
begin
    select branch_id into master_1 from demo_db.branch where branch_id=master1_id;
end;