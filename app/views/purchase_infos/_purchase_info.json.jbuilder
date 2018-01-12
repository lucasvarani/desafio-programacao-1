json.extract! purchase_info, :id, :purchaser_name, :item_description, :item_price, :purchase_count, :merchant_address, :merchant_name, :created_at, :updated_at
json.url purchase_info_url(purchase_info, format: :json)
