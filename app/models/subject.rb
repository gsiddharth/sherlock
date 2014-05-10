class Subject < ActiveRecord::Base
  belongs_to :exam
  has_many :topics
  has_many :questions, :through => :topics   
end
