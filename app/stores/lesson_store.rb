require_relative '../../app/models/lesson'
class LessonStore
  def initialize(hash)
    @hash = hash
  end

  def find_all
    @hash.collect {|lesson_hash|  Lesson.new(lesson_hash[1]) }
  end
end