require 'rspec'
require_relative '../../app/stores/lesson_store'


describe 'Lesson Store' do

  it 'should list all the lessons from the hash passed' do
    hash = {
        "lesson001" => {"title"=>"lesson 1", "img"=>"image1.jpg"},
        "lesson002" => {"title"=>"lesson 2", "img"=>"image2.jpg"}
    }

    all_lessons = LessonStore.new(hash).find_all
    all_lessons[0].id.should eq "lesson001"
    all_lessons[0].title.should eq "lesson 1"
    all_lessons[0].image.should eq "image1.jpg"
    all_lessons[1].id.should eq "lesson002"
    all_lessons[1].title.should eq "lesson 2"
    all_lessons[1].image.should eq "image2.jpg"
  end
end