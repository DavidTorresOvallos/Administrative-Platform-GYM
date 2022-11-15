class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :tipo_maquina
      t.string :grupo_muscular
      t.date :fecha_compra
      t.decimal :costo

      t.timestamps
    end
  end
end
