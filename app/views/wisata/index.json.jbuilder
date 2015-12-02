json.array!(@wisata) do |wisatum|
  json.extract! wisatum, :id, :nama, :harga, :info, :foto
  json.url wisatum_url(wisatum, format: :json)
end
