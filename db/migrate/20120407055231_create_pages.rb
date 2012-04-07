class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :dormName
      t.string :roomNumber

      t.timestamps
    end
  end
end
