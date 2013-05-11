require_relative 'slim_page'
class CoursesPage
  def initialize(app)
    @app = app
  end
  def page
    SlimPage.new(@app).from_template(:courses)
  end
end