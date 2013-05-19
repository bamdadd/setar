require 'sinatra'
require_relative '../../app/pages/courses_page'
require_relative '../../app/utilities/yml_file_reader'
require_relative '../../app/stores/lesson_store'
class Setar < Sinatra::Base
  set :root, File.dirname(Pathname.new(File.dirname(__FILE__)))
  set :public_folder, Pathname.new(File.dirname(__FILE__))+ "../public/"

    get '/' do
      redirect '/courses'
    end

    get '/courses' do
      hash = YMLFileReader.new('/Users/bdashtba/projects/setar/data/lessons.yml').read
      lessons = LessonStore.new(hash).find_all
      CoursesPage.new(self, lessons).page.render
    end
end
