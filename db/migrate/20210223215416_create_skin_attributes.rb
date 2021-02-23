class CreateSkinAttributes < ActiveRecord::Migration[6.1]
  def change
    create_table :skin_attributes do |t|
      t.string :name

      t.timestamps
    end
  end
end
