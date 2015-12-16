class CreateBerita < ActiveRecord::Migration
  def change
    create_table :berita do |t|
      t.date :tgl
      t.string :judul
      t.text :isi
      t.string :foto

      t.timestamps null: false
    end
  end
end
