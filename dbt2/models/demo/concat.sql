with concat_data as (
    select * from {{ source('fivetran','EMP') }}
),
final as (
    select ID,CONCAT(NAME,ROLE) AS FULL_NAME
    FROM concat_data
)
select * from final