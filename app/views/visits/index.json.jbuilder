json.array!(@visits) do |visit|
  json.extract! visit, :id, :when, :gas, :odometer, :memo, :memberscar_id
  json.url visit_url(visit, format: :json)
end
