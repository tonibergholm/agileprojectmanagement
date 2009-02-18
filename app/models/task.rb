# == Schema Information
# Schema version: 20081207091433
#
# Table name: tasks
#
#  id          :integer(4)      not null, primary key
#  story_id    :integer(4)      not null
#  name        :string(255)     default(""), not null
#  description :text            default(""), not null
#  status      :integer(4)      default(0), not null
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer(4)
#

class Task < ActiveRecord::Base
  belongs_to :story
  belongs_to :user
  has_many :hour_entries
end
