class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :account
      t.string :roomDrawNumber
      t.string :roomNumber
      t.string :email

      t.timestamps
    end
  end
end
