# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :vinyls

  validates :name, presence: true
end
