require("spec_helper")

describe(Brand) do
  it("tells which store the brand belongs to") do
    store = Store.create({:name => "name"})
    brand = Brand.create({:name => "name", :store_id => store.id})
    expect(brand.store()).to(eq(store))
  end

  it("converts the name to lowercase") do
    brand = Brand.create({:name => "NIKE"})
    expect(brand.name()).to(eq("nike"))
  end
end
