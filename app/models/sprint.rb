# == Schema Information
# Schema version: 20081206094952
#
# Table name: sprints
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  deadline    :date
#  release_id  :integer(4)      not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Sprint < ActiveRecord::Base
end
