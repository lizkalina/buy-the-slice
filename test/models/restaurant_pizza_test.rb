# == Schema Information
#
# Table name: restaurant_pizzas
#
#  id            :integer          not null, primary key
#  restaurant_id :integer
#  pizza_id      :integer
#  size          :string
#  price         :decimal(2, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class RestaurantPizzaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
