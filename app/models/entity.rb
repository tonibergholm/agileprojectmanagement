# == Schema Information
# Schema version: 20081207091433
#
# Table name: entities
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)     default(""), not null
#  owner_id   :integer(4)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Entity < ActiveRecord::Base
  has_many :users
  has_many :projects
  belongs_to :owner, :class_name => 'User'
end
