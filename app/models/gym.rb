# == Schema Information
#
# Table name: gyms
#
#  id         :integer          not null, primary key
#  nombre     :string
#  direccion  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Gym < ApplicationRecord
  has_many :employees
  has_many :clients
  has_many :inventories
  has_many :plans
  has_many :products
  has_many :invoices

  validates :nombre, presence: true
  validates :direccion, presence: true
  validates :employees, inverse_of: :gyms
  validates :clients, inverse_of: :gyms
end
