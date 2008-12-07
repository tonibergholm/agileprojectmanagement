# == Schema Information
# Schema version: 20081206112914
#
# Table name: members
#
#  id         :integer(4)      not null, primary key
#  project_id :integer(4)      not null
#  user_id    :integer(4)      not null
#  role_id    :integer(4)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Member < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  belongs_to :role
end
