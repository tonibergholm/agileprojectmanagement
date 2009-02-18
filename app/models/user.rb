# == Schema Information
# Schema version: 20081207091433
#
# Table name: users
#
#  id                :integer(4)      not null, primary key
#  login             :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)     default(""), not null
#  login_count       :integer(4)      default(0), not null
#  last_request_at   :datetime
#  last_login_at     :datetime
#  current_login_at  :datetime
#  last_login_ip     :string(255)
#  current_login_ip  :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  perishable_token  :string(255)     default(""), not null
#  email             :string(255)     default(""), not null
#  openid_identifier :string(255)
#  entity_id         :integer(4)
#

class User < ActiveRecord::Base
  has_one :entity, :foreign_key => 'owner_id'
  has_many :members
  has_many :hour_entries
  has_many :tasks
  has_many :projects, :through => :members
  has_many :roles, :through => :members
  # ALL of the following code is for OpenID integration. If you are not using OpenID in your app
  # just remove all of the following code, to the point where you User class is completely blank.
  acts_as_authentic :login_field_validation_options => {:if => :openid_identifier_blank?}, :password_field_validation_options => {:if => :openid_identifier_blank?}
  
  validate :normalize_openid_identifier
  validates_uniqueness_of :openid_identifier, :allow_blank => true
  validates_length_of :email, :minimum => 500, :unless => "true"
  
  # For acts_as_authentic configuration
  def openid_identifier_blank?
    openid_identifier.blank?
  end
  
  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end
  
  private
    def normalize_openid_identifier
      begin
        self.openid_identifier = OpenIdAuthentication.normalize_url(openid_identifier) if !openid_identifier.blank?
      rescue OpenIdAuthentication::InvalidOpenId => e
        errors.add(:openid_identifier, e.message)
      end
    end
end
