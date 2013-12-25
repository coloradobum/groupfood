class Trip < ActiveRecord::Base
  has_many :members, dependent: :destroy
end
