class AddAppealToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :appeal, :string
  end
end
