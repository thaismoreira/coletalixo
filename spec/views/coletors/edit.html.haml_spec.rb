require 'rails_helper'

RSpec.describe "coletors/edit", :type => :view do
  before(:each) do
    @coletor = assign(:coletor, Coletor.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders the edit coletor form" do
    render

    assert_select "form[action=?][method=?]", coletor_path(@coletor), "post" do

      assert_select "input#coletor_nome[name=?]", "coletor[nome]"

      assert_select "input#coletor_endereco[name=?]", "coletor[endereco]"

      assert_select "input#coletor_cpf[name=?]", "coletor[cpf]"
    end
  end
end
