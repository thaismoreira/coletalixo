require 'rails_helper'

RSpec.describe "motorista/index", :type => :view do
  before(:each) do
    assign(:motorista, [
      Motoristum.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => "Cpf"
      ),
      Motoristum.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of motorista" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
