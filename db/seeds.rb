# frozen_string_literal: true

if Rails.env.development?
  require 'faker'
  include FactoryBot::Syntax::Methods

  puts 'creating admins'

  create(
    :user,
    first_name: 'Masaki',
    last_name: 'Araki',
    email: 'araki@example.com',
    password: 'password'
  )

  puts 'creating users'

  5.times do
    create(:user, :filled)
  end
end
