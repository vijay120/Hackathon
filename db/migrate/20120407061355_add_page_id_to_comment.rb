class AddPageIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :room_id, :integer
  end
end
