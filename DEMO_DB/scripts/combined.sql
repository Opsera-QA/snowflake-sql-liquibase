CREATE OR REPLACE VIEW DEMO_DB.INTG_AR_CUSTOMER_MV
AS 
   SELECT *
   FROM DEMO_DB.branch;

DECLARE
   l_count   NUMBER;
   l_query   VARCHAR2 (8000);
BEGIN
   /*Checking for count of materialized views*/
   SELECT COUNT (1)
   INTO l_count
   FROM all_objects
   WHERE object_name = 'INTG_AR_CUSTOMER_MV'
   AND object_type = 'MATERIALIZED VIEW'
   AND owner = 'DEMO_DB';

   DBMS_OUTPUT.put_line ('Materialized view count: ' || l_count);

   IF l_count > 0
   THEN
      BEGIN
         DBMS_OUTPUT.put_line ('Materialized view dropped');

         /*Dropping materialized view and its respective objects*/
         EXECUTE IMMEDIATE 'DROP MATERIALIZED VIEW DEMO_DB.INTG_AR_CUSTOMER_MV';
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.put_line (
                  'Exception while deleting MV: '
               || SQLERRM
               || ' and can be ignored');
      END;
   END IF;

   /*Checking for count of table*/
   SELECT COUNT (1)
   INTO l_count
   FROM all_objects
   WHERE object_name = 'INTG_AR_CUSTOMER_MV'
   AND object_type = 'TABLE'
   AND owner = 'DEMO_DB';

   DBMS_OUTPUT.put_line ('Table count: ' || l_count);

   IF l_count > 0
   THEN
      BEGIN
         DBMS_OUTPUT.put_line ('Table dropped');

         /*Dropping table and its respective objects*/
         EXECUTE IMMEDIATE 'DROP TABLE DEMO_DB.INTG_AR_CUSTOMER_MV';
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.put_line (
                  'Exception while deleting table: '
               || SQLERRM
               || ' and can be ignored');
      END;
   END IF;
   
   /*Checking for count of synonym*/
   SELECT COUNT (1)
   INTO l_count
   FROM all_objects
   WHERE object_name = 'INTG_AR_CUSTOMER_MV'
   AND object_type = 'SYNONYM'
   AND owner = 'DEMO_DB';

   DBMS_OUTPUT.put_line ('Synonym count: ' || l_count);

   IF l_count > 0
   THEN
      BEGIN
         DBMS_OUTPUT.put_line ('Synonym dropped');

         /*Dropping synonym and its respective objects*/
         EXECUTE IMMEDIATE 'DROP SYNONYM DEMO_DB.INTG_AR_CUSTOMER_MV';
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.put_line (
                  'Exception while deleting synonym: '
               || SQLERRM
               || ' and can be ignored');
      END;
   END IF;

   /*Creating query to create materialized view*/
   l_query := 'CREATE
