# == Schema Information
#
# Table name: inventories
#
#  id             :integer          not null, primary key
#  tipo_maquina   :string
#  grupo_muscular :string
#  fecha_compra   :date
#  costo          :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  gym_id         :integer          not null
#
require "test_helper"

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
