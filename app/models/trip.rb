class Trip < ActiveRecord::Base
  has_many :members
end
