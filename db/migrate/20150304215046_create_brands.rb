class CreateBrands < ActiveRecord::Migration
  def change
    create_table(:brands) do |b|
      b.column(:name, :string)
    end
  end
end
