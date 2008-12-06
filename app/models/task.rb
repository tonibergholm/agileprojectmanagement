# == Schema Information
# Schema version: 20081206094952
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
#

class Task < ActiveRecord::Base
end
