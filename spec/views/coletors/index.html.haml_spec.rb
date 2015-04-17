require 'rails_helper'

RSpec.describe "coletors/index", :type => :view do
  before(:each) do
    assign(:coletors, [
      Coletor.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => "Cpf"
      ),
      Coletor.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of coletors" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
