class CreateGeneratedQuestions < ActiveRecord::Migration
  def change
    create_table :generated_questions do |t|
      t.references :question, index: true
      t.string :variable_values
      t.text :description
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :option5
      t.string :right_option

      t.timestamps
    end
  end
end
