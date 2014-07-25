json.array!(@enginerooms) do |engineroom|
  json.extract! engineroom, :id, :noise_id, :oilcolor_id
  json.url engineroom_url(engineroom, format: :json)
end
