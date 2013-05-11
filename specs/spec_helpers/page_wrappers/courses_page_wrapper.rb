require_relative 'test_page_wrapper'
class CoursesPageWrapper < TestPageWrapper

  def courses
    find_all('h2').collect {|course| course.text}
  end
end