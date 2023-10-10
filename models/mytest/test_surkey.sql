--{{ config(materialized='table') }}

{%- set t1_cols = ['id','cur_date'] -%}

select {{ dbt_utils.generate_surrogate_key(t1_cols) }}  as t1_key 
, c1,c2,c3,c4 
from {{ref('testing_var')}}
