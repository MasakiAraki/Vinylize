# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :vinyl do
    association :user
    association :genre
    title { Faker::Music.album }
    catalog_no { Faker::Alphanumeric.alphanumeric(number: 10).upcase }
    label { Faker::Company.name }
    country { Faker::Address.country }
    year { Faker::Date.between(from: 50.years.ago, to: Date.today).year.to_s }
    notes { Faker::Lorem.paragraph(sentence_count: 2) }
    comment { Faker::Lorem.sentence }
  end
end
