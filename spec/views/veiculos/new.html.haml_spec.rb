require 'rails_helper'

RSpec.describe "veiculos/new", :type => :view do
  before(:each) do
    assign(:veiculo, Veiculo.new(
      :placa => "MyString",
      :ano => "MyString",
      :numero => "MyString",
      :renavan => "MyString"
    ))
  end

  it "renders new veiculo form" do
    render

    assert_select "form[action=?][method=?]", veiculos_path, "post" do

      assert_select "input#veiculo_placa[name=?]", "veiculo[placa]"

      assert_select "input#veiculo_ano[name=?]", "veiculo[ano]"

      assert_select "input#veiculo_numero[name=?]", "veiculo[numero]"

      assert_select "input#veiculo_renavan[name=?]", "veiculo[renavan]"
    end
  end
end
