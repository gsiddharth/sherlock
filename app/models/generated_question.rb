class GeneratedQuestion < ActiveRecord::Base
  belongs_to :question
  has_many :user_answers
  has_one :question_solution, :through => :question  
end
