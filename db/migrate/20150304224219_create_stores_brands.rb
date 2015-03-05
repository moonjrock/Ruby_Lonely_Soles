class CreateStoresBrands < ActiveRecord::Migration
  def change
    create_table(:stores_brands) do |t|
      t.column(:store_id, :integer)
      t.column(:brand_id, :integer)
    end
  end
end
