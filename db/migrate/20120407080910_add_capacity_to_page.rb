class AddCapacityToRoom < ActiveRecord::Migration
  def change
    add_column :pages, :capacity, :integer
  end
end
