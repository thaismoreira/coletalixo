# coding: utf-8
require 'rails_helper'

feature 'gerenciar Veiculo' do

  scenario 'incluir Veiculo' do # , :js => true do
    visit new_veiculo_path
    preencher_e_verificar_veiculo
  end

  scenario 'alterar Veiculo' do #, :js => true do
    veiculo = FactoryGirl.create(:veiculo)
    visit edit_veiculo_path(veiculo)
    preencher_e_verificar_veiculo
  end


  scenario 'excluir veiculo' do #, :javascript => true do
    veiculo = FactoryGirl.create(:veiculo)
    visit veiculos_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_veiculo
    fill_in 'Placa', :with => "Luiz"
    fill_in 'Ano', :with => "Rua XXX"
    fill_in 'Numero', :with => "99999"
    fill_in 'Renavan', :with => "99999"	

    click_button 'Salvar'

    expect(page).to have_content 'Placa: Luiz'
    expect(page).to have_content 'Ano: Rua XXX'
    expect(page).to have_content 'Numero: 99999'
    expect(page).to have_content 'Renavan: 99999'

  end

end
