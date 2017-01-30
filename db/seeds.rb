require './app/models/mountain.rb'
require './app/models/country.rb'

Mountain.destroy_all
Country.destroy_all

mountains  = [
            {name: "Pikes Peak", annual_climbers: 29, elevation_in_feet: 14115, country: Country.find_or_create_by(name: "United States")},
            {name: "Chimborazo", annual_climbers: 39, elevation_in_feet: 20549, country: Country.find_or_create_by(name: "Ecuador")},
            {name: "Aiguille du Dru", annual_climbers: 45, elevation_in_feet: 12316, country: Country.find_or_create_by(name: "France")},
            {name: "Matterhorn", annual_climbers: 39, elevation_in_feet: 14692, country: Country.find_or_create_by(name: "Switzerland")},
            {name: "Mount Kenya", annual_climbers: 55, elevation_in_feet: 17057, country: Country.find_or_create_by(name: "Kenya")},
            {name: "Wheeler Peak", annual_climbers: 20, elevation_in_feet: 3982, country: Country.find_or_create_by(name: "United States")},
            {name: "Mount Rainier", annual_climbers: 95, elevation_in_feet: 14411, country: Country.find_or_create_by(name: "United States")},
            {name: "Mont Blanc", annual_climbers: 49, elevation_in_feet: 15774, country: Country.find_or_create_by(name: "France")},
            {name: "Arcalod", annual_climbers: 49, elevation_in_feet: 7274, country: Country.find_or_create_by(name: "France")},
            {name: "Puigmal", annual_climbers: 15, elevation_in_feet: 9550, country: Country.find_or_create_by(name: "France")}
          ]

mountains.each do |mountain|
  puts "Creating mountain: #{mountain[:name]}"
  Mountain.create!(mountain)
end
