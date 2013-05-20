require_relative 'cassandra_store'
require_relative '../models/practice'
class PracticeStore

  def find_all_practices_for(id)
    CassandraStore.new.find_all(:practice, id).collect {|practice| Practice.new(practice)}
  end
end