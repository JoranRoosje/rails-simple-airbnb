require 'faker'

puts "Deleting all flats..."
Flat.destroy_all

puts "Creating flats..."

ADJECTIVES = [ 'Light', 'Cozy', 'Spacious', 'Bright', 'Modern', 'Charming' ]

4.times do
  flat = Flat.create!(
    name: "#{ADJECTIVES.sample} & #{ADJECTIVES.sample} #{Faker::House.room} Flat #{Faker::Address.city}",
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price_per_night: rand(50..500),
    number_of_guests: rand(1..8)
  )
  puts "Created #{flat.name}"
end

puts "Done! Created #{Flat.count} flats."
