class Brand <ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates(:name, {:presence => true, :length => {:maximum => 20}})
  before_save(:downcase_name)

private

  define_method(:downcase_description) do
    self.name=(name().downcase())
  end
end
