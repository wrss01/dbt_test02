{{ config(materialized='table') }}
select 
num,c 
from {{ref('test_01')}} order by c  desc limit 11