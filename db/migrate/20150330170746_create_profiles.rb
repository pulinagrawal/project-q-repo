class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :password
      t.string :email
      t.integer :reward_amount

      t.timestamps null: false
    end
  end
end
