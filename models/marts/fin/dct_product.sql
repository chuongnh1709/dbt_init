{{ config(materialized='table') }}

select 
    product.supplier_id                    as supplier_id
  , product.stock_item_id                  as product_id --
  , product.stock_item_name                as product_name 
  , product.brand                          as brand_name
  , product.size                           as product_size
  , product.typical_weight_per_unit        as typical_weight_per_unit
from `vit-lam-data.wide_world_importers.warehouse__stock_items` as product
