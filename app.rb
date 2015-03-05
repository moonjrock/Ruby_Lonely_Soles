require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @brands = Brand.all()
  erb(:index)
end

post('/brands') do
  name = params.fetch('name')
  @brand = Brand.new({:name => name})
  @brand.save()
  erb(:success)
end

get('/brands/:id/edit') do
  @brand = Brand.find(params.fetch("id").to_i())
  erb(:brand_edit)
end

patch("/brands/:id") do
  name = params.fetch("name")
  @brand = Brand.find(params.fetch("id").to_i())
  @brand.update({:name => name})
  @brands = Brand.all()
  erb(:index)
end

post('/stores') do
  name = params.fetch('name')
  @store = Brand.new({:name => name})
  @store.save()
  erb(:success)
end

get('/stores/:id/edit') do
  @store = Store.find(params.fetch("id").to_i())
  erb(:store_edit)
end

patch("/stores/:id") do
  name = params.fetch("name")
  @store = Store.find(params.fetch("id").to_i())
  @store.update({:name => name})
  @stores = Store.all()
  erb(:index)
end
