class CreateQuestionsToTopics < ActiveRecord::Migration
  def change
    create_table :questions_to_topics do |t|
      t.belongs_to :topic, index: true
      t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
