class Member < ActiveRecord::Base
	belongs_to :trip
	has_many :expenses

	def total_expenses
		sum = 0 
		self.expenses.each do |expense|
			sum += expense.amount
		end
		sum
	end
end
