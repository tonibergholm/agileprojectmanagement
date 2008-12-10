# == Schema Information
# Schema version: 20081207091433
#
# Table name: projects
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  entity_id   :integer(4)
#

class Project < ActiveRecord::Base
  has_many :members
  has_many :releases
  has_many :stories
  belongs_to :entity
  has_many :users, :through => :member
end
