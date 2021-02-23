class CreateRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :recommendations do |t|
      t.integer :user_id
      t.integer :product_id
      t.boolean :saved

      t.timestamps
    end
  end
end
