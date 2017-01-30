ENV['RACK_ENV'] = 'test'
require 'rspec'
require File.expand_path('../../config/environment.rb', __FILE__)
require 'database_cleaner'
require 'capybara/dsl'

DatabaseCleaner.strategy = :truncation
Capybara.app = MountainsApp

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
  c.include Capybara::DSL
end
