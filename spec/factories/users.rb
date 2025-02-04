# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    password { Faker::Internet.password(min_length: 6) }
    email { "#{first_name}.#{last_name}.#{password}@example.com".downcase }

    trait :filled do
      phone { Faker::PhoneNumber.cell_phone }
      age { Faker::Number.between(from: 18, to: 99) }
    end
  end
end
