json.array!(@events) do |event|
  json.extract! event, :id, :name, :customer_id, :start_datetime
  json.url event_url(event, format: :json)
end
