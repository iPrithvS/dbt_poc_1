
-- Use the `ref` function to select from other models

{{ 
  config(
    materialized='table',
    post_hook='SELECT pg_sleep(120)'
  ) 
}}

select *
from {{ ref('my_first_dbt_model') }}
where id = 1
