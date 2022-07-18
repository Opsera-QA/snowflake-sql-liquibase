--liquibase formatted sql
--changeset srinath:create_branch_table
CREATE TABLE DEMO_DB.branch (
branch_id INT PRIMARY KEY,
branch_name VARCHAR(40),
mgr_id INT,mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES demo_db.employee(emp_id) ON DELETE SET NULL);
--rollback DROP TABLE DEMO_DB.branch