# Looker Studio Dashboard Setup

## 1. Connecting Data Sources
- New tabled created (`order_data_1513restaurant`) from the results of a query perfomed in the `speedy-now-423709-s4.tiller.store_data` BigQuery dataset.
- Connect to the `speedy-now-423709-s4.tiller.order_data_1513restaurant` BigQuery dataset.
- Ensure access to the relevant tables is granted.

## 2. Creating Charts
- Add scorecards for 'id_waiter', 'id_table', 'dim_source', 'm_nb_customer', 'id_order'
- Add a combo chart with:
  - dimensions: 'date_closed', 'date_opened'
  - metrics: 'm_cached_payed', 'm_cached_price', 'm_nb_customer'
  - filter: monthly
  - aggregations: SUM
- Add stacked bar chart
  - dimension: 'dim_status'
  - breakdown_dimension: 'dim_source'
  - metrics: 'id_order'
  - aggregations: COUNT
- Add pie chart
  - dimension: 'dim_source'
  - metrics: 'id_order'
  - aggregations: COUNT_DISTINCT


## 3. Adding Calculated Fields
- Calculate total turnover
