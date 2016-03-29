# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  admin           :boolean          default(FALSE)
#  master          :boolean          default(FALSE)
#  name            :text
#  phone           :text
#  birthday        :date
#  reward_level    :integer
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
