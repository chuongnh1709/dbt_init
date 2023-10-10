{{ config(materialized='table') }}

-- Local variables
{% set v1_xna = 'xna' %}

-- The "modules" function import Python library
{% set now = modules.datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S") %}
{% set last_day = (modules.datetime.datetime.today() - modules.datetime.timedelta(days = 1)) %}
{% set last_day = last_day.strftime("%Y-%m-%d %H:%M:%S") %}

{{ log("[Logging] before trigger model", info=True) }}

select 
   GENERATE_UUID()                                as id  --bq only
  , CURRENT_DATE()                                as cur_date --bq only
  , '{{now}}'                                     as cur_timestamp
  , '{{last_day}}'                                as last_day
  , {{ var("n_minus_one") }}                      as c1
  , {{ var("d_def_value_date_future") }}          as c2
  , COALESCE(NULL, '{{v1_xna}}' )                 as c3  -- this get local var of model only
  , COALESCE(NULL, '{{ var("v_xna") }}' )         as c4  -- this take global var in dbt_project.yml
  , COALESCE(NULL, current_timestamp())           as updated_at
