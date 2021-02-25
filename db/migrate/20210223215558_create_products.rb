class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :brand
      t.string :image
      t.text :description
      t.string :link
      t.string :skin_attribute

      t.timestamps
    end
  end
end
