class Member < ActiveRecord::Base
  has_many :expenses
  belongs_to :trip
end
