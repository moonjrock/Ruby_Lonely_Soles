require("spec_helper")

describe(Store) do
  it { should have_and_belong_to_many :brands }

  it ("validates presence of a name") do
    store = Store.new({:name => ""})
    expect(store.save()).to(eq(false))
  end

  it("capitalize the store name") do
    store = Store.create({:name => "footlocker"})
    expect(store.name()).to(eq("Footlocker"))
  end
end
