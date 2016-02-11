class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :pictures, :vote, :integer, :default => 0
  end
end
