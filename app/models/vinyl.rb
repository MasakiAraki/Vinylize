# frozen_string_literal: true

# Vinyl model
class Vinyl < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  belongs_to :genre
end
