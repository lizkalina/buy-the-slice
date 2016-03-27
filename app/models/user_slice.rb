# == Schema Information
#
# Table name: user_slices
#
#  id            :integer          not null, primary key
#  user_group_id :integer
#  pizza_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class UserSlice < ActiveRecord::Base
  belongs_to :user_group
  belongs_to :pizza
end
