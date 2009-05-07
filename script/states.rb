#!/usr/bin/env ruby
require File.expand_path(File.dirname(__FILE__) + "/../../../../config/environment")

BRASILIZAN_STATES = {
  "acre" => "ac",
  "alagoas" => "al",
  "amapa" => "ap",
  "amazonas" => "am",
  "bahia" => "ba",
  "ceara" => "ce",
  "distrito_federal" => "df",
  "espirito_santo" => "es",
  "goias" => "go",
  "maranhao" => "ma",
  "mato_grosso" => "mt",
  "mato_grosso_do_sul" => "ms",
  "minas_gerais" => "mg",
  "para" => "pa",
  "paraiba" => "pb",
  "parana" => "pr",
  "pernambuco" => "pe",
  "piaui" => "pi",
  "rio_grande_do_sul" => "rs",
  "rio_de_janeiro" => "rj",
  "rondonia" => "ro",
  "roraima" => "rr",
  "santa_catarina" => "sc",
  "sao_paulo" => "sp",
  "sergipe" => "se",
  "tocantis" => "to",
}


country = BSC::Country.find_by_name('Brazil') 
country ||= BSC::Country.create(:name => 'Brazil')

BRASILIZAN_STATES.map do |name, code|
  state = country.states.find_by_name(name.titleize)
  state ||= BSC::State.create!( :name => name.titleize, :code => code.upcase , :country => country); 
end

