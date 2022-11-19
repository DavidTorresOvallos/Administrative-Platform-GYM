# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  cargo       :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Role < ApplicationRecord
  has_many :employees

  validates_presence_of :cargo, message: 'inválido, por favor ingrese un cargo'
  validates_uniqueness_of :cargo, message: 'existente, por favor ingrese un nuevo cargo'
  validates :employees, inverse_of: :rols
end
