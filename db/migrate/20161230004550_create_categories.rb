class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string  :title
      t.string  :cat_type
      t.integer :model

      t.timestamps
    end
  end
end
