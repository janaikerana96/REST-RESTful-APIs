json.extract! contact, :id, :name, :email, :birtdate, :created_at, :updated_at
json.url contact_url(contact, format: :json)
