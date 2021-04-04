class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.text :category_definition

      t.timestamps
    end
  end
end
