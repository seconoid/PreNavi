class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :s_class, null: false
      t.integer :s_code, null: false
      t.integer :s_no, null: false
      t.timestamps
    end

    add_index :students, [:s_code], unique: true
  end
end
