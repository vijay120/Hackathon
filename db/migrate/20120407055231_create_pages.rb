class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :dormName
      t.string :roomNumber

      t.timestamps
    end
  end
end
