class RemoveRoomNumberFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :roomNumber
  end

  def down
    add_column :users, :roomNumber, :string
  end
end
