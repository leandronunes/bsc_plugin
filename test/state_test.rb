require File.dirname(__FILE__) + '/test_helper'

class StateTest < Test::Unit::TestCase

  include BSC

  def setup
    @country = Country.create(:name => 'Some Country')
    @another_country = Country.create(:name => 'Another Country')
  end

  def test_setup
    assert @country.valid?
  end

  def teardown
    Country.delete_all
    State.delete_all
  end

  def test_dependency_of_country
    n_states = BSC::State.count
    c = create_country
    s = create_state(:country => c)
    assert c.valid?
    assert s.valid?
    assert c.destroy
    assert_equal n_states, BSC::State.count
  end

  def test_save
    s = State.count
    State.create(:name => 'Some name', :code => 'SN', :country => @country)
    assert_equal  s + 1, State.count
  end

  def test_presence_of_name
    State.delete_all
    s = State.new()
    s.valid?
    assert s.errors.invalid?(:name)
    s.name = 'some name'
    s.valid?
    assert !s.errors.invalid?(:name)
  end

  def test_uniqueness_of_name_on_same_country_scope
    s = State.new(:name => 'some name', :code => 'SN', :country => @country)
    assert s.save

    s = State.new(:country => @country)
    s.name = 'some name'
    s.valid?
    assert s.errors.invalid?(:name)
  end

  def test_uniqueness_of_name_on_differents_country_scope
    s = State.new(:name => 'some name', :code => 'SN', :country => @country)
    assert s.save

    s = State.new(:country => @another_country)
    s.name = 'some name'
    s.valid?
    assert !s.errors.invalid?(:name)
  end

  def test_uniqueness_of_code_on_same_country_scope
    s = State.new(:name => 'some name', :code => 'SN', :country => @country)
    assert s.save

    s = State.new(:country => @country)
    s.code = 'SN'
    s.valid?
    assert s.errors.invalid?(:code)
  end

  def test_uniqueness_of_code_on_differents_country_scope
    s = State.new(:name => 'some name', :code => 'SN', :country => @country)
    assert s.save

    s = State.new(:country => @another_country)
    s.code = 'SN'
    s.valid?
    assert !s.errors.invalid?(:code)
  end
end
