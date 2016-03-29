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

class User < ActiveRecord::Base
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :orders
  has_many :line_items
  belongs_to :business
end
