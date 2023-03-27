--liquibase formatted sql
--changeset srinath:sql_plsql endDelimiter:/ runAlways:true runOnChange:true
CREATE OR REPLACE VIEW DEMO_DB.INTG_AR_CUSTOMER_MV 
AS 
   SELECT *
     FROM DEMO_DB.branch


SET DEFINE OFF;

DECLARE
   l_count   NUMBER;
   l_query   VARCHAR2 (8000);
    
BEGIN
   /*Checking for count of materialized views*/
   SELECT COUNT (1)
     INTO l_count
     FROM all_objects
    WHERE object_name = 'INTG_AR_CUSTOMER_MV'
          AND object_type = 'MATERIALIZED VIEW';

   DBMS_OUTPUT.put_line ('Materialized view count :' || l_count);

   IF l_count > 0
   THEN
      BEGIN
         DBMS_OUTPUT.
         put_line ('Count of Materialized view dropped :' || l_count);

         /*Dropping materialized view and it respective objects*/
         EXECUTE IMMEDIATE 'DROP MATERIALIZED VIEW INTG_AR_CUSTOMER_MV';
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.
            put_line (
                  'Exception while deleting MV :'
               || SQLERRM
               || 'and can be ignoarble');
      END;
   END IF;

   /*Checking for count of table*/
   SELECT COUNT (1)
     INTO l_count
     FROM all_objects
    WHERE object_name = 'INTG_AR_CUSTOMER_MV'
          AND object_type = 'TABLE';

   DBMS_OUTPUT.put_line ('table count :' || l_count);

   IF l_count > 0
   THEN
      BEGIN
         DBMS_OUTPUT.put_line ('Count of Tables dropped :' || l_count);

         /*Dropping Table and it respective objects*/
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.
            put_line (
                  'Exception while deleting Table :'
               || SQLERRM
               || 'and can be ignoarble');
      END;
   END IF;
   
   
      /*Checking for count of synonym*/
   SELECT COUNT (1)
     INTO l_count
     FROM all_objects
    WHERE object_name = 'INTG_AR_CUSTOMER_MV'
          AND object_type = 'SYNONYM';

   DBMS_OUTPUT.put_line ('table count :' || l_count);

   IF l_count > 0
   THEN
      BEGIN
         DBMS_OUTPUT.put_line ('Count of Synonym dropped :' || l_count);

         /*Dropping Synonym and it respective objects*/
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.
            put_line (
                  'Exception while deleting Table :'
               || SQLERRM
               || 'and can be ignoarble');
      END;
   END IF;

   /*Creating query to create materialized view*/

   BEGIN
       DBMS_OUTPUT.put_line ('Synonym and grants created');
   EXCEPTION
      WHEN OTHERS
      THEN
         DBMS_OUTPUT.
         put_line (
            'Error While creating Materialized view with error :' || SQLERRM);
   END;
END;


