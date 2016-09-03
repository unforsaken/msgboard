class AddPostTitleColumn < ActiveRecord::Migration
  def change
  	add_column :posts, :title, :string
  end
end
