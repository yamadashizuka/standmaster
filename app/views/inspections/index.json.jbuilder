json.array!(@inspections) do |inspection|
  json.extract! inspection, :id, :mechanic, :memo, :visit_id
  json.url inspection_url(inspection, format: :json)
end
