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

class PizzaTopping < ActiveRecord::Base
  belongs_to :pizza
  belongs_to :topping
end
