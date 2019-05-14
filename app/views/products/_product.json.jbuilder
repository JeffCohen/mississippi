json.extract! product, :id, :ASIN, :price, :title, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
