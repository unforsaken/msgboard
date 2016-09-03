class AddCategoriesTable < ActiveRecord::Migration
  def change
		create_table :categories do |t|
			t.string :title
			t.timestamps null: false
		end
		create_table :post_and_categories do |t|
			t.integer :post_id
			t.integer :category_id
			t.timestamps null: false
		end
  end
end
