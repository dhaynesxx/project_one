# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  admin           :boolean          default("false")
#  master          :boolean          default("false")
#  name            :text
#  phone           :text
#  birthday        :date
#  reward_level    :integer
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :orders
  belongs_to :business
end
