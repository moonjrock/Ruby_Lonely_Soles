Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

require("bundler/setup")
Bundler.require(:default)

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
