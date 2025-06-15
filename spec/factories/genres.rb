# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :genre do
    name { Faker::Music.genre }
  end
end
