module BSC
  module Helper

     def select_country(object, method, countries_collection = nil, options = {}, html_options = {})
       countries_collection ||= BSC::Country.find(:all, :order => :name)
       options[:include_blank] = true
       select(object, method, countries_collection.map{|c| [c.name, c.id]}, options, html_options)
     end

     def select_state(country, object, method, states_collection = nil, options = {}, html_options = {})
       country ||= country.kind_of?(BSC::Country) ? country : BSC::Country.find_by_name(country)
       return select(object, method, '', options, html_options)  if country.nil?
       raise 'Invalid state options' if !states_collection.blank? and !country.states.include?(states_collection)
       states_collection ||= country.states.find(:all, :order => :name)
       options[:include_blank] = true
       select(object, method, states_collection.map{|s| [s.name, s.id]}, options, html_options)
     end

     def select_city(state, object, method, cities_collection = nil, options = {}, html_options = {})
       state ||= state.kind_of?(BSC::State) ? state : BSC::State.find_by_name(state)
       return select(object, method, '', options, html_options)  if state.nil?
       raise 'Invalid state options' if !cities_collection.blank? and !state.cities.include?(cities_collection)
       cities_collection ||= state.cities.find(:all, :order => :name)
       options[:include_blank] = false
       select(object, method, cities_collection.map{|c| [c.name, c.id]}, options, html_options)
     end
  end
end
