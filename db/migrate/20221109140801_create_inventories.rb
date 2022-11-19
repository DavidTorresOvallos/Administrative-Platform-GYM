class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :grupo_muscular
      t.date :fecha_compra
      t.decimal :costo
      t.references :id_inventorable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
