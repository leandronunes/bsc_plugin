module BSC

  class Country < ActiveRecord::Base
    has_many :states, :dependent => :destroy
    validates_uniqueness_of :name
    validates_presence_of :name
  end

end
