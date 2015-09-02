json.array!(@humanos) do |humano|
  json.extract! humano, :id, :mujer, :hombre
  json.url humano_url(humano, format: :json)
end
