# frozen_string_literal: true

# Vinyl model
class Vinyl < ApplicationRecord
  belongs_to :user
  belongs_to :genre

  has_many :vinyl_artists, dependent: :destroy
  has_many :artists, through: :vinyl_artists

  validates :title, presence: true
end
