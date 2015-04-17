json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :placa, :ano, :numero, :renavan
  json.url veiculo_url(veiculo, format: :json)
end
