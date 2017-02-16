class RenameUrlColumnToProduct < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :url, :site_url
  end
end
