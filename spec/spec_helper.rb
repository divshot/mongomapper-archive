$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require 'mongo_mapper'
require 'mongomapper/archive'

MongoMapper.database = 'archive-spec'

class Journal
  include MongoMapper::Document
  plugin Mongomapper::Archive

  key :title, String
  key :body, String
end

RSpec.configure do |config|
  config.before :suite do
    MongoMapper.database.connection.drop_database('archive-spec')
  end
end