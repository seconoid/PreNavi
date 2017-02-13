class AddExhibitCodeToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :exhibit_code, :string
  end
end
