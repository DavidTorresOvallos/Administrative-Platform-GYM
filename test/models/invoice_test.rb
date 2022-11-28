# == Schema Information
#
# Table name: invoices
#
#  id                 :integer          not null, primary key
#  monto              :integer
#  fecha              :datetime
#  detalle            :string
#  iva                :decimal(, )
#  valor              :decimal(, )
#  tipo               :integer
#  id_recibtable_type :string           not null
#  id_recibtable_id   :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require "test_helper"

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
