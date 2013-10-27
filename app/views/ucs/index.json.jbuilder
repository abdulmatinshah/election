json.array!(@ucs) do |uc|
  json.extract! uc, :name
  json.url uc_url(uc, format: :json)
end
