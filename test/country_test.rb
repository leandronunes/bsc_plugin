require File.dirname(__FILE__) + '/test_helper'

class CountryTest < Test::Unit::TestCase

  include BSC

  def teardown
    Country.delete_all
  end

  def test_save
    c = Country.count
    Country.create(:name => 'Some name')
    assert_equal  c + 1, Country.count
  end

  def test_presence_of_name
    Country.delete_all
    c = Country.new()
    c.valid?
    assert c.errors.invalid?(:name)
    c.name = 'some name'
    c.valid?
    assert !c.errors.invalid?(:name)
  end

  def test_uniqueness_of_name
    c = Country.new()
    c.name = 'some name'
    assert c.save

    c = Country.new()
    c.name = 'some name'
    c.valid?
    assert c.errors.invalid?(:name)
  end


end
