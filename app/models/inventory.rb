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
class Inventory < ApplicationRecord
  belongs_to :id_inventorable, polymorphic: true
  belongs_to :gyms
  belongs_to :types

  validates :nombre, presence: true
  validates :types, presence: true
end
