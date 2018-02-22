json.extract! transaction, :id, :transactionable_id, :transactionable_type, :title, :notes, :amount, :due_on, :recur, :recur_type, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
