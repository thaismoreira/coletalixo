class CreateMotorista < ActiveRecord::Migration
  def change
    create_table :motorista do |t|
      t.string :nome
      t.string :endereco
      t.string :cpf

      t.timestamps null: false
    end
  end
end
