json.array!(@video_pages) do |video_page|
  json.extract! video_page, :name, :title, :description
  json.url video_page_url(video_page, format: :json)
end
