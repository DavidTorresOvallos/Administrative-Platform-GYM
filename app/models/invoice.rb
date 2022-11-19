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
#  id_recibtable_type :string           not null
#  id_recibtable_id   :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Invoice < ApplicationRecord
  belongs_to :id_recibtable, polymorphic: true
  MovementType = {add: 0, remove: 1}
  validates :monto, presence: true, numericality: true

  enum tipo: [:"Compra", :"Venta"]
end
