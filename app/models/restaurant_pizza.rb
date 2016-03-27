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

class RestaurantPizza < ActiveRecord::Base
  belongs_to :pizza
  belongs_to :restaurant
end
