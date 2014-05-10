class Question < ActiveRecord::Base
  has_many :questions_to_topics
  has_many :topics, :through => :questions_to_topics
  has_many :generated_questions
  has_one :question_solution
end
