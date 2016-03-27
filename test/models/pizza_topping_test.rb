# == Schema Information
#
# Table name: pizza_toppings
#
#  id         :integer          not null, primary key
#  pizza_id   :integer
#  topping_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PizzaToppingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
