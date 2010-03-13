module BSC

  class Country < ActiveRecord::Base
    has_many :states, :class_name => 'BSC::State', :dependent => :destroy

    validates_uniqueness_of :name
    validates_presence_of :name
  end

end
