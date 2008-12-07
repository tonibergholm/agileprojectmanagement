# == Schema Information
# Schema version: 20081206112914
#
# Table name: roles
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)     default(""), not null
#  type       :integer(4)      default(0), not null
#  created_at :datetime
#  updated_at :datetime
#

class Role < ActiveRecord::Base
  has_many :members
  has_many :users, :through => :member
end
