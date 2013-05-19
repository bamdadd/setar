require 'yaml'
class YMLFileReader
  def initialize(file_path)
    @file_path = file_path
  end

  def read
    File.open(@file_path){ |yf| YAML.load(yf) }
  end
end