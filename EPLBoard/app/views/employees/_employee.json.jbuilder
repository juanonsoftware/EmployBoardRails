json.extract! employee, :id, :full_name, :email, :created_at, :updated_at
json.url employee_url(employee, format: :json)
