class Trip < ActiveRecord::Base
	has_many :members

	def total_trip_expense
		sum = 0 
		member_list = self.members
		member_list.each do |member|
			sum += member.total_expenses
		end
		sum
	end
end
