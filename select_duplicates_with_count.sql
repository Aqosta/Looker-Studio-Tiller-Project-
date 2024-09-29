SELECT id_order, COUNT(*) AS count
FROM `speedy-now-423709-s4.tiller.payment_data`
GROUP BY id_order
HAVING COUNT(*) > 1;