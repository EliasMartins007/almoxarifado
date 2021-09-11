class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :nome, null: false
      t.integer :qtd
      t.text :descricao

      t.timestamps
    end
  end
end
