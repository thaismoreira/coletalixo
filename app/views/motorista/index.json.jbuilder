json.array!(@motorista) do |motoristum|
  json.extract! motoristum, :id, :nome, :endereco, :cpf
  json.url motoristum_url(motoristum, format: :json)
end
