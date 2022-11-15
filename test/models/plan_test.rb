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
require "test_helper"

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
