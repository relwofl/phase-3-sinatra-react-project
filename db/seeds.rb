puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    Cow.create(
        name: Faker::Name.first_name
        # mother: rand(3..12)
    )
end

Field.create(farm: "IHF", name: "Upper", note: "")
Field.create(farm: "IHF", name: "Lower", note: "")
Field.create(farm: "IHF", name: "Solar", note: "")
Field.create(farm: "IHF", name: "Potato Patch", note: "")
Field.create(farm: "BNF", name: "Far", note: "closed to cows for haying")
Field.create(farm: "BNF", name: "North", note: "")
Field.create(farm: "BNF", name: "East", note: "")

puts "✅ Done seeding!"
