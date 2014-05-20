class AddColumnToTopic < ActiveRecord::Migration
  def change
    add_reference :topics, :subject, index: true
  end
end
