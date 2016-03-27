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

require 'test_helper'

class UserSliceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
