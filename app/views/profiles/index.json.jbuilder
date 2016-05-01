json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :email, :phone, :company, :pan_no, :address, :user_id
  json.url profile_url(profile, format: :json)
end
