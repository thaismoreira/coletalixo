json.array!(@coletors) do |coletor|
  json.extract! coletor, :id, :nome, :endereco, :cpf
  json.url coletor_url(coletor, format: :json)
end
