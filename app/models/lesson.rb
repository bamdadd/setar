class Lesson
  attr_reader :title, :image, :url, :id
  def initialize(id, data)
    @lesson_hash = data
    @title = @lesson_hash["title"]
    @image = @lesson_hash["img"]
    @url = @lesson_hash["url"]
    @id = id
  end
end