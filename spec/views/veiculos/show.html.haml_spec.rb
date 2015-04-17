require 'rails_helper'

RSpec.describe "veiculos/show", :type => :view do
  before(:each) do
    @veiculo = assign(:veiculo, Veiculo.create!(
      :placa => "Placa",
      :ano => "Ano",
      :numero => "Numero",
      :renavan => "Renavan"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Placa/)
    expect(rendered).to match(/Ano/)
    expect(rendered).to match(/Numero/)
    expect(rendered).to match(/Renavan/)
  end
end
