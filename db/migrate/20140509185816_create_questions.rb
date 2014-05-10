class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :difficulty_level
      t.string :variables
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
