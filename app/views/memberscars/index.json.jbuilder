json.array!(@memberscars) do |memberscar|
  json.extract! memberscar, :id, :numberplate, :automaker
  json.url memberscar_url(memberscar, format: :json)
end
