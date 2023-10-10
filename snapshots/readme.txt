-- Bigquery Command 
SELECT * FROM `learn-dbt-397522.dbt_bigquery_mytest.testing_var` LIMIT 1000
/

insert into  `learn-dbt-397522.dbt_bigquery_mytest.testing_var`  (id, cur_date, c1,  c3, c4 , updated_at)
  values (
            GENERATE_UUID()
          , CURRENT_DATE()
          , -3
          , "A"
          , "B"
          , CURRENT_TIMESTAMP()
          )
;

---- run snapshot at first time 
(.dbtenv) D:\projects\dbt_bigquery>dbt snapshot --select snap_testing_var

delete from `learn-dbt-397522.dbt_bigquery_mytest.testing_var`
where id ='95c51fdb-9cc9-407c-9447-8f3da7a9dc87';

update  `learn-dbt-397522.dbt_bigquery_mytest.testing_var`
set c1=99 , updated_at = CURRENT_TIMESTAMP()
where id = 'b2353984-1e29-46f3-ba41-afe0b2067f99';

delete from `learn-dbt-397522.dbt_bigquery_mytest.testing_var`
where id = 'b2353984-1e29-46f3-ba41-afe0b2067f99'
;

---- run snapshot again 
(.dbtenv) D:\projects\dbt_bigquery>dbt snapshot --select snap_testing_var
SELECT * FROM `learn-dbt-397522.mytest_snapshot.snap_testing_var` LIMIT 1000;
