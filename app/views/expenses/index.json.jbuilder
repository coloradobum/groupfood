json.array!(@expenses) do |expense|
  json.extract! expense, :id, :amount, :comment, :member_id
  json.url expense_url(expense, format: :json)
end
