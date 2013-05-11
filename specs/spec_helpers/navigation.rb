require_relative '../spec_helpers/page_wrappers/courses_page_wrapper'

module Navigation
  def goto_courses_page
    CoursesPageWrapper.new(go_to_capybara_page_with_path('/courses'))
  end

  private
  def go_to_capybara_page_with_path(path)
    visit path
    Capybara.current_session
  end
end