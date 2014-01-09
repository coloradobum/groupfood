json.array!(@expenses) do |expense|
  json.extract! expense, :id, :title, :amount, :comment
  json.url expense_url(expense, format: :json)
end
