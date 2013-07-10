json.array!(@profiles) do |profile|
  json.extract! profile, :first_name, :last_name, :company
  json.url profile_url(profile, format: :json)
end
