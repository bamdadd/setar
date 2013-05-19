class Lesson
  attr_reader :title, :image, :url
  def initialize(lesson_hash)
    @lesson_hash = lesson_hash
    @title = @lesson_hash["title"]
    @image = @lesson_hash["img"]
    @url = @lesson_hash["url"]
  end
end