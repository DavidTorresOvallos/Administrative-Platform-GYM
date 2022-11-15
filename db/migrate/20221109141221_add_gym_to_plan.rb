class AddGymToPlan < ActiveRecord::Migration[7.0]
  def change
    add_reference :plans, :gym, null: false, foreign_key: true
  end
end
