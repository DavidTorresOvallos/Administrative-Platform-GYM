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
class Inventory < ApplicationRecord
  belongs_to :gyms
end
