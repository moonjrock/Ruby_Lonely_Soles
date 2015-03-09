require("spec_helper")

describe(Brand) do
  it { should have_and_belong_to_many(:stores) }

  it("validates the presence of a name") do
    brand = Brand.new({:name => ""})
    expect(brand.save()).to(eq(false))
  end

  it("capitalize the brand name") do
    brand = Brand.create({:name => "nike"})
    expect(brand.name()).to(eq("Nike"))
  end
end
