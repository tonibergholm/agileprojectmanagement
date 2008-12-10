# == Schema Information
# Schema version: 20081207091433
#
# Table name: releases
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  deadline    :date
#  project_id  :integer(4)      not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Release < ActiveRecord::Base
  belongs_to :project
  has_many :sprints
end
