class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :nombre
      t.string :direccion

      t.timestamps
    end
  end
end
