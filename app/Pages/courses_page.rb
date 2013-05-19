require_relative 'slim_page'

class CoursesPage
  def initialize(app, lessons)
    @app = app
    @lessons = lessons
  end
  def page
    SlimPage.new(@app).from_template(:courses)
                      .displaying({"lessons" => @lessons })
  end
end