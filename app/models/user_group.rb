# == Schema Information
#
# Table name: user_groups
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserGroup < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  has_many :user_slices
end
