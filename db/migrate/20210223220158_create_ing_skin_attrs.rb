class CreateIngSkinAttrs < ActiveRecord::Migration[6.1]
  def change
    create_table :ing_skin_attrs do |t|
      t.integer :skin_attribute_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
