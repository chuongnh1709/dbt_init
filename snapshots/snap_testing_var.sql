{% snapshot snap_testing_var %}

{{
   config(
         target_database = 'learn-dbt-397522'
        , target_schema = 'mytest_snapshot'
        , unique_key = 'id'
        , strategy = 'timestamp'
        , updated_at = 'updated_at'
        , invalidate_hard_deletes=True
   )
}}

select * from {{ ref('testing_var') }}

{% endsnapshot %}
