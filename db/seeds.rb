require 'faker'

Character.destroy_all # delete everything in our Character table

puts 'Creating our characters'

10.times do
    character = Character.new(
        name: Faker::Movies::HarryPotter.character,
        character_type: Faker::Movies::HarryPotter.house,
        location: Faker::Movies::HarryPotter.location
    )
    character.save!
end

puts "Created: #{Character.count} character(s)"