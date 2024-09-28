# Looker Studio Dashboard Setup

## 1. Connecting Data Sources
- New tabled created (`order_data_1restaurant`) from the results of a query perfomed in the `speedy-now-423709-s4.tiller.store_data` BigQuery dataset.
- Connect to the `speedy-now-423709-s4.tiller.order_data_1513restaurant` BigQuery dataset.
- Ensure access to the relevant tables is granted.

## 2. Creating Charts
- Add a combo chart with:
  -dimension: 'date_closed'
  -metric: 'm_cached_payed', 'm_cached_price', 'm_nb_customer'
  -filter: 'monthly'

## 3. Adding Calculated Fields
- 
