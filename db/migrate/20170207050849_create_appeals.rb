class CreateAppeals < ActiveRecord::Migration[5.0]
  def change
    create_table :appeals do |t|
      t.string :caption
      t.string :body
      t.integer :user_id
      t.timestamps
    end
  end
end
