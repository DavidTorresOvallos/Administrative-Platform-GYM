# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Type < ApplicationRecord
  has_many :inventories, inverse_of: :types
  has_many :products, inverse_of: :types

  validates_presence_of :nombre, message: 'inválido, ingrese un nombre de usuario'
  validates_uniqueness_of :nombre, message: 'existente, ingrese un nuevo tipo'
end
