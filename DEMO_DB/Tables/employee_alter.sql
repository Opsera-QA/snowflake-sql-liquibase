--liquibase formatted sql
--changeset srinath:alter_employee_table
ALTER TABLE DEMO_DB.employee ADD salary INT;
--rollback ALTER TABLE DEMO_DB.employee DROP COLUMN salary