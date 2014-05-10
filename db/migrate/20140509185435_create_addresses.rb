class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :description
      t.references :city, index: true
      t.integer :pincode

      t.timestamps
    end
  end
end
