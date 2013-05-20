require_relative '../lib/cassandra_io'
require 'json'
class CassandraStore
  def initialize
    @cassandra = CassandraIO.new(
        :heroku => 'api.cassandra.io',
        :port => 443,
        :ssl => 'true',
        :token => 'Nj8CeTWd4v',
        :accountId => 'b33bab4c-8768-41fb-a7be-c714d905d6fa')
    #@cassandra.create_keyspace('setar')
    #@cassandra.create_columnfamily('setar', 'practice', CassandraIO.UTF8Type)

  end
  def find_all(type, filter_id)
   JSON.parse(@cassandra.get_data('setar', type.to_s, filter_id))
  end

  def create(type, id, data)
    @cassandra.post_data('setar', type.to_s, id, data)
  end
end