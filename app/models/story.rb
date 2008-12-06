# == Schema Information
# Schema version: 20081206094952
#
# Table name: stories
#
#  id             :integer(4)      not null, primary key
#  project_id     :integer(4)      not null
#  sprint_id      :integer(4)
#  name           :string(255)     default(""), not null
#  description    :text
#  business_value :integer(4)      default(100)
#  estimate       :integer(4)      default(100)
#  status         :integer(4)      default(0), not null
#  created_at     :datetime
#  updated_at     :datetime
#

class Story < ActiveRecord::Base
end
