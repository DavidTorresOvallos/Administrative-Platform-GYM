# == Schema Information
#
# Table name: inventories
#
#  id                   :integer          not null, primary key
#  grupo_muscular       :string
#  fecha_compra         :date
#  costo                :decimal(, )
#  id_inventorable_type :string           not null
#  id_inventorable_id   :integer          not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
require "test_helper"

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
