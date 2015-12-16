json.array!(@berita) do |beritum|
  json.extract! beritum, :id, :tgl, :judul, :isi, :foto
  json.url beritum_url(beritum, format: :json)
end
