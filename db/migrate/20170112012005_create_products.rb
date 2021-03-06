class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :student, null: false
      t.string :name, null: false
      t.string :about, null: false
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
