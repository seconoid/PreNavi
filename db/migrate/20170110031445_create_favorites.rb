class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :student, null:false
      t.references :client, null:false
      t.timestamps null: false
    end
  end
end
