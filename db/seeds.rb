# frozen_string_literal: true

if Rails.env.development?
  require 'faker'
  include FactoryBot::Syntax::Methods

  puts 'Creating admins'

  admin = create(
    :user,
    first_name: 'Masaki',
    last_name: 'Araki',
    email: 'araki@example.com',
    password: 'password'
  )

  puts 'Creating users'

  users = []
  5.times do
    users << create(:user, :filled)
  end

  puts 'Creating genres'
  
  genres = []
  10.times do
    genres << create(:genre)
  end

  puts 'Creating artists'
  
  artists = []
  20.times do
    artists << create(:artist)
  end

  puts 'Creating vinyls and vinyl_artists'
  
  all_users = [admin] + users
  
  30.times do
    vinyl = create(
      :vinyl,
      user: all_users.sample,
      genre: genres.sample
    )

    vinyl.artists << artists.sample(rand(1..3))
  end

  puts 'Seed data created successfully!'
end
