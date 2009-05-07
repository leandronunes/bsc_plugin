ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../../../../config/environment")
 
require 'test/unit'
require 'mocha'

# from Rails
require 'test_help'

# load the database schema for the tests
ActiveRecord::Base.logger = Logger.new(File.dirname(__FILE__) + "/debug.log")
load(File.dirname(__FILE__) + '/schema.rb')
# change the table names for the tests to not touch
BSC::Country.set_table_name 'bsc_test_countries'
BSC::State.set_table_name 'bsc_test_states'
BSC::City.set_table_name 'bsc_test_cities'

def create_country(params = {})
  BSC::Country.create!({:name => 'some country'}.merge(params))
end

def create_state(params = {})
  BSC::State.create!({:name => 'some state', :country => BSC::Country.find(:first), :code => 'SS'}.merge(params))
end

def create_city(params = {})
  BSC::City.create!({:name => 'some city', :state => BSC::State.find(:first)}.merge(params))
end

class Test::Unit::TestCase

  def self.should(name, &block)
    @shoulds ||= []

    destname = 'test_should_' + name.gsub(/[^a-zA-z0-9]+/, '_')
    if @shoulds.include?(destname)
      raise "there is already a test named \"#{destname}\""
    end

    @shoulds << destname
    if block_given?
      self.send(:define_method, destname, &block)
    else
      self.send(:define_method, destname) do
        flunk 'pending: should ' + name
      end
    end

  end

end 

