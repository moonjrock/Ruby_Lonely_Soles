class CreateStoresBrands < ActiveRecord::Migration
  def change
    create_table(:stores_brands) do |sb|
      sb.column(:store_id, :integer)
      sb.column(:brand_id, :integer)
    end      
  end
end
