class Brand <ActiveRecord::Base
  has_and_belongs_to_many (:stores)
  before_save(:capitalize_brand)
  validates(:name, {:presence => true})

private

  define_method(:capitalize_brand) do
    self.name =(name().capitalize!())
  end
end
