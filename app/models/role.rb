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
end
