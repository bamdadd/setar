require 'sinatra'
require_relative '../../app/pages/courses_page'
class Setar < Sinatra::Base
  set :root, File.dirname(Pathname.new(File.dirname(__FILE__)))
  set :public_folder, Pathname.new(File.dirname(__FILE__))+ "../public/"

    get '/' do
      redirect '/courses'
    end

    get '/courses' do
      CoursesPage.new(self).page.render
    end
end
