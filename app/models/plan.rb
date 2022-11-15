# == Schema Information
#
# Table name: plans
#
#  id            :integer          not null, primary key
#  nombre        :string
#  fecha_inicial :date
#  fecha_final   :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  gym_id        :integer          not null
#
class Plan < ApplicationRecord
  belongs_to :gyms
  has_many :clients  
end
