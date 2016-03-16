json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :location
  json.url animal_url(animal, format: :json)
end
