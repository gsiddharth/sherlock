class UserProfile < ActiveRecord::Base
  belongs_to :user
  has_one :address
  has_one :city, :through => :address
  has_one :state, :through => :city
  has_one :country, :through => :state
  
end
