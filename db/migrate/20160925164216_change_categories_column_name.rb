class ChangeCategoriesColumnName < ActiveRecord::Migration
  def change
  	rename_column :categories, :title, :name
  end
end
