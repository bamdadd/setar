# Encoding: UTF-8
require_relative '../functional_spec_helpers'
describe 'Courses Page' do

  it 'should show list of available courses' do
    courses_page = goto_courses_page
    courses_page.courses.should include 'دستور مقدماتی تار و ستار - کتاب اول'
  end
end