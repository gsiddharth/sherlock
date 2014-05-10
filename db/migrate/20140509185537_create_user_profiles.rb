class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :user_type
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :profile_photo
      t.string :gender
      t.references :address, index: true
      t.string :mobile_number

      t.timestamps
    end
  end
end
