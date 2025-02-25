class CreateVinylArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :vinyl_artists do |t|
      t.references :vinyl, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
