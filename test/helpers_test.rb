require 'test/unit'
require File.dirname(__FILE__) + '/test_helper'

@country = BSC::Country.create!(:name => 'some country')
@state = BSC::State.create!(:country => @country, :name => 'some state')

class HelpersTestController < ActionController::Base
  def select_country
    render :inline => '<%= select_country("object", "method") %>'
  end

  def select_state
    render :inline => '<%= select_state(@country, "object", "method") %>'
  end

  def select_city
    render :inline => '<%= select_state(@state, "object", "method") %>'
  end

end


class HelpersTest < Test::Unit::TestCase

  def setup
    @controller = HelpersTestController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  should "generate select tag on select_country method" do 
    get :select_country
    assert_response :success
    assert_tag(:tag => 'select')
  end

  should "generate select tag on select_state method" do 
    get :select_state
    assert_response :success
    assert_tag(:tag => 'select')
  end

  should "generate select tag on select_city method" do 
    get :select_city
    assert_response :success
    assert_tag(:tag => 'select')
  end

end
