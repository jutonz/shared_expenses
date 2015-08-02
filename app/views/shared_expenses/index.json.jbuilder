json.array!(@shared_expenses) do |shared_expense|
  json.extract! shared_expense, :id, :duedate, :parties, :amount
  json.url shared_expense_url(shared_expense, format: :json)
end
