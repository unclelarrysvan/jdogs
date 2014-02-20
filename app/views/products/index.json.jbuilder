json.array!(@products) do |product|
  json.extract! product, :id, :name, :inventory
  json.url product_url(product, format: :json)
end
