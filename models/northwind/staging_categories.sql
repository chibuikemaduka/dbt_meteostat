WITH source_data AS (
    SELECT *
    FROM {{ source('northwind_data', 'categories') }}
)

SELECT
    category_id AS category_id,
    categoryname AS category_name
FROM source_data