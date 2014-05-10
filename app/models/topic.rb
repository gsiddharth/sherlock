class Topic < ActiveRecord::Base
  belongs_to :subject
  has_many :questions_to_topics
  has_many :questions, :through => :questions_to_topics
end
