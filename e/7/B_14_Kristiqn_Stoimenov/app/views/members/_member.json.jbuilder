json.extract! member, :id, :member_name, :member_email, :created_at, :updated_at
json.url member_url(member, format: :json)
