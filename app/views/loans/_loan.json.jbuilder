json.extract! loan, :id, :book_id, :user_id, :loan_date, :loan_expiration_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
