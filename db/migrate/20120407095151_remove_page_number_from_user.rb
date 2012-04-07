class RemovePageNumberFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :roomNumber
  end

  def down
    add_column :users, :pageNumber, :string
  end
end
