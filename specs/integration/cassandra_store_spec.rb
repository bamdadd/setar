require 'rspec'
require_relative '../../app/stores/cassandra_store'
describe 'Cassandra Store' do

  it 'should create a new row in specified keyspace' do
    require 'pp'
    store= CassandraStore.new.create(:practice, 'lesson001', {'url' => 'www.google.com'}).should eq '{"message":"Success","status":"200","detail":"lesson001 upsert successfull."}'
  end
end