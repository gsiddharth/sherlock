class CreateUserToExams < ActiveRecord::Migration
  def change
    create_table :user_to_exams do |t|
      t.belongs_to :user, index: true
      t.belongs_to :exam, index: true

      t.timestamps
    end
  end
end
