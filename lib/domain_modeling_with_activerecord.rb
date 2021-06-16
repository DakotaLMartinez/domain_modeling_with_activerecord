require "sinatra/activerecord"
require "pry"
require "require_all"

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite'
)

require_all "./lib/domain_modeling_with_activerecord"



module DomainModelingWithActiverecord
  class Error < StandardError; end
  # Your code goes here...
end
