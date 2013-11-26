class Trip < ActiveRecord::Base
	has_many :members
end
# akin to a zombie
# a trip can have many members

# a trip has many members