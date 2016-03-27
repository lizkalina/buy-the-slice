# == Schema Information
#
# Table name: groups
#
#  id              :integer          not null, primary key
#  name            :string
#  organizer_id    :integer
#  signup_deadline :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Group < ActiveRecord::Base
  has_many :user_groups
  has_many :users, through: :user_groups, as: :members
  has_many :user_slices, through: :user_groups
  has_many :group_pizzas


  def user_ids=(ids)
    ids.each do |id|
      if id.present? && !UserGroup.find_by(group_id:self.id,user_id:id) 
        self.user_groups.build(user_id:id)
      end
    end
  end

end
