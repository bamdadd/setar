require 'rspec'
require_relative '../../app/utilities/yml_file_reader'

describe 'YML File Reader' do

  it 'should read a yml file and convert it to hash' do
    data = YMLFileReader.new('../fixtures/test.yml').read
    data["lesson001"]["title"].should eq "lesson 1"
    data["lesson001"]["img"].should eq "img1.jpg"
    data["lesson002"]["title"].should eq "lesson 2"
    data["lesson002"]["img"].should eq "img2.jpg"
  end
end