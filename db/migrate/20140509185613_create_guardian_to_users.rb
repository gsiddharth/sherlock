class CreateGuardianToUsers < ActiveRecord::Migration
  def change
    create_table :guardian_to_users do |t|
      t.references :user, index: true
      t.references :guardian, index: true

      t.timestamps
    end
  end
end
