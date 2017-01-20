class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :c_id, null: false
      t.string :c_name, null: false
      t.timestamps
    end
  end
end
