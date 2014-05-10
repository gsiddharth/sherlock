class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.references :user, index: true
      t.references :generated_question, index: true
      t.string :marked_option
      t.boolean :iscorrect

      t.timestamps
    end
  end
end
