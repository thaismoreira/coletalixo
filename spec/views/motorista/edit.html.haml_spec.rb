require 'rails_helper'

RSpec.describe "motorista/edit", :type => :view do
  before(:each) do
    @motoristum = assign(:motoristum, Motoristum.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders the edit motoristum form" do
    render

    assert_select "form[action=?][method=?]", motoristum_path(@motoristum), "post" do

      assert_select "input#motoristum_nome[name=?]", "motoristum[nome]"

      assert_select "input#motoristum_endereco[name=?]", "motoristum[endereco]"

      assert_select "input#motoristum_cpf[name=?]", "motoristum[cpf]"
    end
  end
end
