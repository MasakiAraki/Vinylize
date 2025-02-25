# frozen_string_literal: true

class Artist < ApplicationRecord
  has_many :vinyl_artists, dependent: :destroy
  has_many :vinyls, through: :vinyl_artists
end
