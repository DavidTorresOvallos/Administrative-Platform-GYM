class AddGymToInventory < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventories, :gym, null: false, foreign_key: true
  end
end
