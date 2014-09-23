json.array!(@sittings) do |sitting|
  json.extract! sitting, :id, :comment, :date
  json.url sitting_url(sitting, format: :json)
end
