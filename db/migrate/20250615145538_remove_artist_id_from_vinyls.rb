class RemoveArtistIdFromVinyls < ActiveRecord::Migration[7.1]
  def change
    remove_column :vinyls, :artist_id, :bigint
  end
end
