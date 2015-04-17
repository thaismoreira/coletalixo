json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :matricula
  json.url aluno_url(aluno, format: :json)
end
