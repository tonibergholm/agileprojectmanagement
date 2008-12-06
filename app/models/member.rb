# == Schema Information
# Schema version: 20081206094952
#
# Table name: members
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)      not null
#  role_id    :integer(4)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Member < ActiveRecord::Base
end
