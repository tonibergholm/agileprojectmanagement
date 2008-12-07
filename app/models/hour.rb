# == Schema Information
# Schema version: 20081206112914
#
# Table name: hours
#
#  id          :integer(4)      not null, primary key
#  task_id     :integer(4)
#  user_id     :integer(4)      not null
#  day         :date            not null
#  hour_entry  :float           not null
#  description :string(255)     default(""), not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Hour < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
end
