# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :vinyl_artist do
    association :vinyl
    association :artist
  end
end
