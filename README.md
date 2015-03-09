<h1>Welcome to Shoe Game</h1>
Shoe Game is your personal shoe store and brand listing source!

<h1>INSTRUCTIONS</h1>

<h2>Start the database server:</h2>
$ psql


<h2>Load Database</h2>  
$ rake db:create
$ rake db:schema:load
$ rake db:test:prepare

<h2>Start Sinatra</h2>
$ ruby app.rb

<h2>KNOWN BUGS</h2>

1. Routing issues.

2. Failures:

    1) Brand should have and belong to many :stores
     Failure/Error: it { should have_and_belong_to_many(:stores) }
       expected #<Brand:0x007fb8ebbccab8> to respond to `has_and_belong_to_many?`
     # ./spec/brand_spec.rb:4:in `block (2 levels) in <top (required)>'

    2) Store should have and belong to many :brands
     Failure/Error: it { should have_and_belong_to_many :brands }
       expected #<Store:0x007fb8ee099a80> to respond to `has_and_belong_to_many?`
     # ./spec/store_spec.rb:4:in `block (2 levels) in <top (required)>'


Author: Alan Moon (https://github.com/moonjrock)

감사합니다

MIT License. Copyright 2015
