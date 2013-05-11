require 'rake/clean'
require 'rake/tasklib'

def env()
  (ENV['RACK_ENV'] || 'development').to_sym
end

def load_task(name, from_dir='lib/tasks')
  load(File.join(File.dirname(__FILE__), from_dir, "#{name}.task"))
end

def load_extra_rake_tasks
  [].each do |task|
    load_task task
  end
end

require 'ostruct'
require 'yaml'

def settings
  if @config.nil?
    all_envs_config = OpenStruct.new(YAML.load_file("config/config.yml"))
    @config = OpenStruct.new(all_envs_config.send(env))
  end
  @config
end


def scm_revision()
  %x{git rev-parse master}.chomp
end



if env != :production
  load_extra_rake_tasks
end


task :default do
  Rake::Task[:server].invoke
end


desc 'Run server'
task :server do
  %x{rackup config.ru -p7777}
end

desc 'Run server prod'
task :server_prod do
  %x{rackup config.ru -E production}
end

directory 'target'

task :shotgun do
  sh "shotgun --port=7272 config.ru"
end



