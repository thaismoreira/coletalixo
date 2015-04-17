require 'rails_helper'

RSpec.describe "motorista/new", :type => :view do
  before(:each) do
    assign(:motoristum, Motoristum.new(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders new motoristum form" do
    render

    assert_select "form[action=?][method=?]", motorista_path, "post" do

      assert_select "input#motoristum_nome[name=?]", "motoristum[nome]"

      assert_select "input#motoristum_endereco[name=?]", "motoristum[endereco]"

      assert_select "input#motoristum_cpf[name=?]", "motoristum[cpf]"
    end
  end
end
