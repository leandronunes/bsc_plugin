#!/usr/bin/env ruby
require File.expand_path(File.dirname(__FILE__) + "/../../../../config/environment")

class Place
  BRASILIZAN_STATES = %w[
    acre
    alagoas
    amapa
    amazonas
    bahia
    ceara
    distrito_federal
    espirito_santo
    goias
    maranhao
    mato_grosso
    mato_grosso_do_sul
    minas_gerais
    para
    paraiba
    parana
    pernambuco
    piaui
    rio_grande_do_sul
    rio_grande_do_norte
    rio_de_janeiro
    rondonia
    roraima
    santa_catarina
    sao_paulo
    sergipe
    tocantis
  ]

  BRASILIZAN_STATES.map do |state|
    define_method("load_#{state}") do 
      run =  IO.popen("ruby #{File.join(File.dirname(__FILE__), File.join('/../script/',"#{state}_cities.rb"))}")
      puts run.readlines
    end
  end

  def load_countries
    run =  IO.popen("ruby #{File.join(File.dirname(__FILE__), File.join('/../script/',"countries.rb"))}")
    puts run.readlines
  end

  def load_states
    run =  IO.popen("ruby #{File.join(File.dirname(__FILE__), File.join('/../script/',"states.rb"))}")
    puts run.readlines
  end

end


desc "This plugin load brazilian states and cities on database and the objects to manipulate it"
namespace :bsc_plugin do

  place = Place.new

  Place::BRASILIZAN_STATES.map do |state|
    desc "Load #{state.titleize} cities on database"
    task state.to_sym do
      puts "Loading #{state.titleize} cities on database"
      place.send("load_#{state}")
    end
  end

  task :all do
    puts "Loading Countries"
    place.send("load_countries")
    Place::BRASILIZAN_STATES.map do |state|
      puts "Loading #{state.titleize} cities on database"
      place.send("load_#{state}")
    end
  end

  task :countries do
    puts "Loading countries..."
    place.send("load_countries")    
  end

  task :states do
    puts "Loading states..."
    place.send("load_states")    
  end

end

namespace :test do
  desc "run the bsc_plugin test suite"
  task :bsc_plugin do
    Rake::TestTask.new(:mt_test) do |t|
      t.libs << File.join(File.dirname(__FILE__), '/../lib')
      t.pattern = File.join(File.dirname(__FILE__), '/../test/**/*_test.rb')
      t.verbose = true
    end
    Rake::Task[:mt_test].invoke
  end
end

namespace :doc do
  desc "generate the bsc_plugin rdoc files"
  task :bsc_plugin do
    Rake::RDocTask.new(:mt_rdoc) do |rdoc|
      rdoc.rdoc_dir = File.join(File.dirname(__FILE__), '/../rdoc')
      rdoc.title    = 'BSC Plugin'
      rdoc.options << '--line-numbers' << '--inline-source'
      rdoc.rdoc_files.include(File.join(File.dirname(__FILE__), '/../README'))
      rdoc.rdoc_files.include(File.join(File.dirname(__FILE__), '/../lib/**/*.rb'))
    end
    Rake::Task[:mt_rdoc].invoke
  end
end

