class Practice
  attr_reader :url
  def initialize(practice_data)
    @practice_data = practice_data
    @url = practice_data[1]
  end
end