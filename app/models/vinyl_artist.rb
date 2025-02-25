class VinylArtist < ApplicationRecord
  belongs_to :vinyl
  belongs_to :artist
end
