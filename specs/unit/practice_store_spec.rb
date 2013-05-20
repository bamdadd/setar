require 'rspec'
require_relative '../../app/stores/practice_store'
require_relative '../../app/stores/cassandra_store'


describe 'Practice Store' do

  it 'should list all the practices for specific lesson' do
    CassandraStore.new.create(:practice, 'lessonTest002', {'url'=>'http://api.soundcloud.com/tracks/91743911'})

    practices = PracticeStore.new().find_all_practices_for('lessonTest002')
    practices[0].url.should eq 'http://api.soundcloud.com/tracks/91743911'
  end
end