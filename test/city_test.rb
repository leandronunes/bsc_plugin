require File.dirname(__FILE__) + '/test_helper'

class CityTest < Test::Unit::TestCase

  include BSC

  def setup
    @country = Country.create(:name => 'Some Country')
    @state = State.create(:name => 'Some Name', :code => 'SN', :country => @country)
    @another_state = State.create(:name => 'Another Name', :code => 'SN', :country => @country)
  end

  def test_setup
    assert @country.valid?
    assert @state.valid?
  end

  def teardown
    City.delete_all
    State.delete_all
    Country.delete_all
  end

  def test_save
    s = City.count
    City.create(:name => 'Some name', :zip_code => '23232', :state => @state)
    assert_equal  s + 1, City.count
  end

  def test_presence_of_name
    City.delete_all
    c = City.new()
    c.valid?
    assert c.errors.invalid?(:name)
    c.name = 'some name'
    c.valid?
    assert !c.errors.invalid?(:name)
  end

  def test_uniqueness_of_name_on_same_country_scope
    City.delete_all
    c = City.new(:name => 'some name', :zip_code => '3423432', :state => @state)
    assert c.save

    c = City.new(:state => @state)
    c.name = 'some name'
    c.valid?
    assert c.errors.invalid?(:name)
  end

  def test_uniqueness_of_name_on_differents_country_scope
    Country.delete_all
    c = City.new(:name => 'some name', :zip_code => '2312321', :state => @state)
    assert c.save

    c = City.new(:state => @another_state)
    c.name = 'some name'
    c.valid?
    assert !c.errors.invalid?(:name)
  end

  def test_uniqueness_of_zip_code_on_same_country_scope
    c = City.new(:name => 'some name', :zip_code => '3333', :state => @state)
    assert c.save

    c = City.new(:state => @state)
    c.zip_code = '3333'
    c.valid?
    assert c.errors.invalid?(:zip_code)
  end

  def test_uniqueness_of_zip_code_on_differents_country_scope
    c = City.new(:name => 'some name', :zip_code => '3333', :state => @state)
    assert c.save

    c = City.new(:state => @another_state)
    c.zip_code = '3333'
    c.valid?
    assert !c.errors.invalid?(:zip_code)
  end

  def test_dependency_of_state
    Country.destroy_all
    n_cities = BSC::City.count
    c = create_country
    s = create_state(:country => c)
    city  = create_city(:state => s)
    assert city.valid?
    assert s.destroy
    assert_equal n_cities, BSC::City.count
  end


end
