class UserProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  belongs_to :city, :through => :address
  belongs_to :state, :through => :city
  belongs_to :country, :through => :state
  
end
