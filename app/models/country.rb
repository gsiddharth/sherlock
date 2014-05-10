class Country < ActiveRecord::Base
  has_many :states
  has_many :cities, :through => :states
  has_many :addresses, :through => :cities
end
