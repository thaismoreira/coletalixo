class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :ano
      t.string :numero
      t.string :renavan

      t.timestamps null: false
    end
  end
end
