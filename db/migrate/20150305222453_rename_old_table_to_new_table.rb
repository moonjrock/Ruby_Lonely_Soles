class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :stores_brands, :brands_stores 
  end
end
