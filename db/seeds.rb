puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    Cow.create(
        name: Faker::Name.first_name,
        farm_field_id: rand(7..14)
        # mother_id: rand(21..30)
    )
end

FarmField.create(farm: "IHF", name: "Upper", note: "")
FarmField.create(farm: "IHF", name: "Lower", note: "")
FarmField.create(farm: "IHF", name: "Solar", note: "")
FarmField.create(farm: "IHF", name: "Potato Patch", note: "")
FarmField.create(farm: "BNF", name: "Far", note: "closed to cows for haying")
FarmField.create(farm: "BNF", name: "North", note: "")
FarmField.create(farm: "BNF", name: "East", note: "")

puts "✅ Done seeding!"
