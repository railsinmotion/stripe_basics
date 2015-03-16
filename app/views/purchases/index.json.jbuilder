json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :book_id, :email, :token, :cost, :description, :stripe_id
  json.url purchase_url(purchase, format: :json)
end
