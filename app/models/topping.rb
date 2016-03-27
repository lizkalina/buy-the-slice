# == Schema Information
#
# Table name: toppings
#
#  id         :integer          not null, primary key
#  name       :string
#  vegetarian :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Topping < ActiveRecord::Base
  has_many :pizza_toppings
end
