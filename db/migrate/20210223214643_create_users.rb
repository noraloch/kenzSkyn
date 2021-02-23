class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :preferred_skincare
      t.boolean :oily_skin
      t.boolean :dry_skin
      t.boolean :combination_skin
      t.boolean :acne
      t.boolean :sport_practice

      t.timestamps
    end
  end
end
