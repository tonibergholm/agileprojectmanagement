# == Schema Information
# Schema version: 20081206094952
#
# Table name: projects
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Project < ActiveRecord::Base
  has_many :members
  has_many :releases
  has_many :stories
end
