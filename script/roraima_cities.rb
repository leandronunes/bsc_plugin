#!/usr/bin/env ruby
require File.dirname(__FILE__) + '/../../../../config/environment'

country = BSC::Country.find_by_name('Brazil')
country ||= BSC::Country.create(:name => 'Brazil')

state = country.states.find_by_name('Roraima')
state ||= BSC::State.create!( :name => 'Roraima', :code => 'RR', :country => country);

c = BSC::City.new(:name => 'Alto Alegre', :zip_code => '69.350-000', :state => state); c.save 
c = BSC::City.new(:name => 'Boa Vista', :zip_code => '69.300-000', :state => state); c.save 
c = BSC::City.new(:name => 'Bonfim', :zip_code => '69.380-000', :state => state); c.save 
c = BSC::City.new(:name => 'Caracarai', :zip_code => '69.360-000', :state => state); c.save 
c = BSC::City.new(:name => 'Mucajai', :zip_code => '69.340-000', :state => state); c.save 
c = BSC::City.new(:name => 'Normandia', :zip_code => '69.355-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Joao Da Baliza', :zip_code => '69.375-000', :state => state); c.save 
c = BSC::City.new(:name => 'Sao Luiz', :zip_code => '69.370-000', :state => state); c.save 
c = BSC::City.new(:name => 'Amajari', :zip_code => '69.343-000', :state => state); c.save 
c = BSC::City.new(:name => 'Pacaraima', :zip_code => '69.345-000', :state => state); c.save 
c = BSC::City.new(:name => 'Iracema', :zip_code => '69.348-000', :state => state); c.save 
c = BSC::City.new(:name => 'Uiramuta', :zip_code => '69.358-000', :state => state); c.save 
c = BSC::City.new(:name => 'Rorainopolis', :zip_code => '69.373-000', :state => state); c.save 
c = BSC::City.new(:name => 'Caroebe', :zip_code => '69.378-000', :state => state); c.save 
c = BSC::City.new(:name => 'Canta', :zip_code => '69.390-000', :state => state); c.save 

