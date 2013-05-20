require_relative '../../app/models/lesson'
class LessonStore
  def initialize(hash)
    @hash = hash
  end

  def find_all
    @hash.collect {|lesson_data|  Lesson.new(lesson_data[0], lesson_data[1]) }
  end
end