--liquibase formatted sql
--changeset srinath:create_branch_table endDelimiter:/
select * from dual
/

BEGIN
   select * from dual;
END;
/