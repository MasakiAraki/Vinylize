# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :artist do
    discogs_id { Faker::Number.unique.number(digits: 7) }
    name { Faker::Music.band }
  end
end
