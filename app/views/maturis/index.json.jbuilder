json.array!(@maturis) do |maturi|
  json.extract! maturi, :id, :taitoru, :city, :naiyou, :toukou, :foto, :nitiji
  json.url maturi_url(maturi, format: :json)
end
