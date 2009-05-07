module BSC

  class State < ActiveRecord::Base

    has_many :cities, :dependent => :destroy
    belongs_to :country

    validates_presence_of :name
    validates_presence_of :country_id
    validates_uniqueness_of :name, :scope => :country_id
#TODO See code for other countries
#    validates_uniqueness_of :code, :scope => :country_id

  end

end
