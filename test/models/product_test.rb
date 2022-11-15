# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  nombre              :string
#  descripcion         :text
#  id_productable_type :string           not null
#  id_productable_id   :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
