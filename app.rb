require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @brands = Brand.all
  @stores = Store.all
  erb(:index)
end

get("/add_brand/") do
  @brands = Brand.all
  erb(:add_brand)
end

post("/add_brand/") do
  brand_name = params.fetch("brand_name")
  brand = Brand.create({:brand_name => brand_name, :id => nil})
  @brands = Brand.all
  erb(:add_brand)
end

get("/add_store/") do
  @stores = Store.all
  erb(:add_store)
end

post("/add_store/") do
  store_name = params.fetch("store_name")
  store = Store.create({:store_name => store_name, :id => nil})
  @stores = Store.all
  erb(:add_store)
end

get("/brand/:id/") do
  @brand = Brand.find(params.fetch("id").to_i)
  @stores = Store.all
  erb(:brand)
end

patch("/brand/:id/") do
  brand_id = params.fetch("id").to_i
  @brand = Brand.find(brand_id)
  store_ids = params.fetch("store_ids")
  @brand.update({:store_ids => store_ids})
  @store = Store.all
  erb(:brand)
end

get("/store/:id/") do
  @store = Store.find(params.fetch("id").to_i)
  @brands = Brand.all
  erb(:store)
end

patch("/store/:id/") do
  store_id = params.fetch("id").to_i
  @store = Store.find(store_id)
  brand_ids = params.fetch("brand_ids")
  @store.update({:brand_ids => brand_ids})
  @brands = Brand.all
  erb(:store)
end
