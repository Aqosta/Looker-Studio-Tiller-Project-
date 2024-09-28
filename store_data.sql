SELECT *
FROM `speedy-now-423709-s4.tiller.store_data`
WHERE id_store = 1513

WITH modified_data AS (
    SELECT * EXCEPT(dim_source),
               CASE
                   WHEN id_device = 424 AND dim_source is null THEN 'Tiller iPAD'
                   WHEN id_device = 25379 AND dim_source is null THEN 'tiller-order'
                   ELSE dim_source
               END AS dim_source
    FROM `speedy-now-423709-s4.tiller.order_data_1restaurant`
)
SELECT * EXCEPT(dim_source), COALESCE(dim_source, 'other') AS dim_source
FROM modified_data;

