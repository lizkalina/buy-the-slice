# == Schema Information
#
# Table name: group_pizzas
#
#  id                  :integer          not null, primary key
#  group_id            :integer
#  restaurant_pizza_id :integer
#  quantity            :integer
#  closed              :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class GroupPizzaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
