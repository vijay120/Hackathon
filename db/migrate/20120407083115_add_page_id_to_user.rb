class AddPageIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :page_id, :integer
  end
end
