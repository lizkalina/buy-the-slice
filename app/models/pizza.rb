# == Schema Information
#
# Table name: pizzas
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Pizza < ActiveRecord::Base
  has_many :restaurant_pizzas
  has_many :pizza_toppings
  has_many :toppings, through: :pizza_toppings
  has_many :user_slices
end
