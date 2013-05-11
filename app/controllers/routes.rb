require 'sinatra'
require_relative '../../app/Pages/courses_page'
class Setar < Sinatra::Base
  set :root, File.dirname(Pathname.new(File.dirname(__FILE__)))

    get '/' do
      redirect '/courses'
    end

    get '/courses' do
      CoursesPage.new(self).page.render
    end
end
