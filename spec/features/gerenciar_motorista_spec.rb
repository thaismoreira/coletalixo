# coding: utf-8
require 'rails_helper'

feature 'gerenciar Motorista' do

  scenario 'incluir Motorista' do # , :js => true do
    visit new_motoristum_path
    preencher_e_verificar_motorista
  end

  scenario 'alterar Motorista' do #, :js => true do
    motorista = FactoryGirl.create(:motoristum)
    visit edit_motoristum_path(motorista)
    preencher_e_verificar_motorista
  end

  scenario 'excluir motorista' do #, :javascript => true do
    motorista = FactoryGirl.create(:motoristum)
    visit motorista_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_motorista
    fill_in 'Nome', :with => "Luiz"
    fill_in 'Endereço', :with => "Rua XXX"
    fill_in 'Cpf', :with => "99999"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Luiz'
    expect(page).to have_content 'Endereço: Rua XXX'
    expect(page).to have_content 'Cpf: 99999'

  end

end
