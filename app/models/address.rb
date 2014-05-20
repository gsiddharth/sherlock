class Address < ActiveRecord::Base
  belongs_to :city
  has_one :user_profile
  has_one :user, :through => :user_profile
  
end
