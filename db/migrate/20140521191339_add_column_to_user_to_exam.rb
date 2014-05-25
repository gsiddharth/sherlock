class AddColumnToUserToExam < ActiveRecord::Migration
  def change
    add_column :user_to_exams, :active, :boolean
  end
end
