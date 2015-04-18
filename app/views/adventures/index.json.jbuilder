json.array!(@adventures) do |adventure|
  json.extract! adventure, :id, :name, :description, :picture, :visit, :cents, :address
  json.url adventure_url(adventure, format: :json)
end
