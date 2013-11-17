class Trip < ActiveRecord::Base

	validates_presence_of :trip_name, :message => 'At least put something.'
	
end
