class CreateQuestionSolutions < ActiveRecord::Migration
  def change
    create_table :question_solutions do |t|
      t.references :question, index: true
      t.text :description

      t.timestamps
    end
  end
end
