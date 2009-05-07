module BSC

  class City < ActiveRecord::Base
    belongs_to :state
  
    validates_presence_of :name
    validates_presence_of :state_id
    validates_uniqueness_of :name, :scope => :state_id
#    validates_uniqueness_of :zip_code, :scope => :state_id
  
  end

end
