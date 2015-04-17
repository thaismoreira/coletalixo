require 'rails_helper'

RSpec.describe "coletors/new", :type => :view do
  before(:each) do
    assign(:coletor, Coletor.new(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders new coletor form" do
    render

    assert_select "form[action=?][method=?]", coletors_path, "post" do

      assert_select "input#coletor_nome[name=?]", "coletor[nome]"

      assert_select "input#coletor_endereco[name=?]", "coletor[endereco]"

      assert_select "input#coletor_cpf[name=?]", "coletor[cpf]"
    end
  end
end
