puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    Cow.create(
        name: Faker::Name.first_name
        # mother: rand(3..12)
    )
end

Farm.create(name: , field: , season: , duration: , )
puts "✅ Done seeding!"
