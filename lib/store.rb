class Store <ActiveRecord::Base
  has_and_belongs_to_many (:brands)
  before_save(:capitalize_store)
  validates(:name, {:presence => true})

private

  define_method(:capitalize_store) do
    self.name =(name().capitalize!())
  end
end
