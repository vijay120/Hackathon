class AddCapacityToPage < ActiveRecord::Migration
  def change
    add_column :pages, :capacity, :integer
  end
end
