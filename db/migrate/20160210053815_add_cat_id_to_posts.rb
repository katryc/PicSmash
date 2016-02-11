class AddCatIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cat_id, :integer
  end
end
