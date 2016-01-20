# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Examples:

# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

require_relative './country_data.rb'
require_relative './player_data.rb'
require_relative './tournament_data.rb'
require_relative './user_data.rb'


Country.destroy_all
Player.destroy_all
Tournament.destroy_all
User.destroy_all

country_data = get_country_data()
player_data = get_player_data()
tournament_data = get_tournament_data()
user_data = get_user_data()



country_data.each  do |country|
  Country.create!({
      country:        country[:country],
      country_code:   country[:country_code],
      fed_name:       country[:fed_name],
      fed_address:    country[:fed_address],
      fed_city:       country[:fed_city],
      telephone:      country[:telephone],
      email:          country[:email],
      president:      country[:president],
      website:        country[:website],
      flag:           country[:flag]
    })
end

player_data.each  do |player|
  Player.create!({
      first_name:        player[:first_name],
      last_name:         player[:last_name],
      birthdate:         player[:birthdate],
      age:               player[:age],
      country:           player[:country],
      ranking:           player[:ranking],
      gender:            player[:gender],
      tournament:        player[:tournament],
      seed:              player[:seed],
      draw_line_number:  player[:draw_line_number],
      photo:             player[:photo],
      notes:             player[:notes]
    })
end

tournament_data.each  do |tournament|
  Tournament.create!({
      name:        tournament[:name],
      year:        tournament[:year],
      photo:       tournament[:photo]
    })
end

user_data.each  do |user|
  User.create!({
      first_name:        user[:first_name],
      last_name:         user[:last_name],
      user_name:         user[:user_name],
      email:             user[:email],
      admin:             user[:admin],
      password:          user[:password],
      password_digest:   user[:password_digest]
    })
end
