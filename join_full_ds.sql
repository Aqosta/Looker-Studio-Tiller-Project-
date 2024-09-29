SELECT orders.* EXCEPT(dim_status), 
  line_items.* EXCEPT(id_order, dim_name, dim_category, dim_unit_measure_display, dim_unit_measure, m_total_price_exc_vat, m_unit_price_exc_vat, m_tax_percent),
  payments.* EXCEPT(id_order, date_created)
FROM speedy-now-423709-s4.tiller.order_data_1513restaurant AS orders
JOIN speedy-now-423709-s4.tiller.order_line_cleandate AS line_items
ON orders.id_order = line_items.id_order
JOIN speedy-now-423709-s4.tiller.payment_data AS payments
ON payments.id_order = orders.id_order