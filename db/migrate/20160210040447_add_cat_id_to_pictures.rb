class AddCatIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :cat_id, :integer
  end
end
