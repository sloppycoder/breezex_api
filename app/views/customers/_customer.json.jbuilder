json.extract! customer, :id, :rel_id, :name, :segment, :country, :active, :created_at, :updated_at
json.url customer_url(customer, format: :json)
