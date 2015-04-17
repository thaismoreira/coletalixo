require 'rails_helper'

RSpec.describe "motorista/show", :type => :view do
  before(:each) do
    @motoristum = assign(:motoristum, Motoristum.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :cpf => "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Cpf/)
  end
end
