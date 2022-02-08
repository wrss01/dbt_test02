
{{ config(materialized='table') }}

with source_data as (
SELECT ceil(random()*(100-1)+1) as num from generate_series(1,500)
)


select num,count(*) as c from source_data group by num


