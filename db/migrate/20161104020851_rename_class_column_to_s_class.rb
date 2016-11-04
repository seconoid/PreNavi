class RenameClassColumnToSClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :class, :s_class
  end
end
