# coding: utf-8
require 'rails_helper'

feature 'gerenciar Coletor' do

  scenario 'incluir Coletor' do # , :js => true do
    visit new_coletor_path
    preencher_e_verificar_coletor
  end

  scenario 'alterar Coletor' do #, :js => true do
    coletor = FactoryGirl.create(:coletor)
    visit edit_coletor_path(coletor)
    preencher_e_verificar_coletor
  end

  scenario 'excluir coletor' do #, :javascript => true do
    coletor = FactoryGirl.create(:coletor)
    visit coletors_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_coletor
    fill_in 'Nome', :with => "Luiz"
    fill_in 'Endereço', :with => "Rua XXX"
    fill_in 'Cpf', :with => "99999"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Luiz'
    expect(page).to have_content 'Endereço: Rua XXX'
    expect(page).to have_content 'Cpf: 99999'

  end

end
