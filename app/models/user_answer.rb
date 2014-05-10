class UserAnswer < ActiveRecord::Base
  belongs_to :user
  belongs_to :generated_question
  has_one :question_solution, :through => :generated_question
end
