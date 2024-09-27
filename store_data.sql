SELECT *
FROM `speedy-now-423709-s4.tiller.store_data`
WHERE id_store = 1513

SELECT * EXCEPT (date_created),
CAST(date_created AS date) AS date_created
FROM `speedy-now-423709-s4.tiller.id_store_1513_data`
