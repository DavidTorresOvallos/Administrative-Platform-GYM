class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.references :id_productable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
