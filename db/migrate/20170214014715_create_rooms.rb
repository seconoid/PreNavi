class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :no, null: false
      t.integer :col, null: false
      t.integer :row, null: false
      t.timestamps
    end
  end
end
