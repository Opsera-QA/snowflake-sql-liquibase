--liquibase formatted sql
--changeset srinath:create_func
create or replace function demo_db.dqcoe_sample_func (master1_id varchar) 
returns float
  as '3.141592654::FLOAT'
  ;