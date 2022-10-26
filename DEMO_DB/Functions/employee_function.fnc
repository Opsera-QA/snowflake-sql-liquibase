--liquibase formatted sql
--changeset srinath:create_func
create or replace function demo_db.dqcoe_sample_func (master1_id varchar) as master_1 nvarchar2(100);
begin
    select branch_id into master_1 from demo_db.branch where branch_id=master1_id;
    DBMS_OUTPUT.put_line ('master : '||master_1);
end;