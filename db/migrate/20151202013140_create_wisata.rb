class CreateWisata < ActiveRecord::Migration
  def change
    create_table :wisata do |t|
      t.string :nama
      t.integer :harga
      t.text :info
      t.string :foto

      t.timestamps null: false
    end
  end
end
