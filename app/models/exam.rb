class Exam < ActiveRecord::Base
  has_many :users_to_exams
  has_many :users, :through => :users_to_exams
  
  has_many :subjects
  has_many :topics, :through => :subjects
  
end
