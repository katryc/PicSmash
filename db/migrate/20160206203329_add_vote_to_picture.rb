class AddVoteToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :vote, :integer
  end
end
