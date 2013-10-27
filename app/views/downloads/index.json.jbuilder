json.array!(@downloads) do |download|
  json.extract! download, :title
  json.url download_url(download, format: :json)
end
