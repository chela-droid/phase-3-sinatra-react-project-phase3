puts "🌱 Seeding spices..."

# Seed your database here
20.times do
    Inventory.create(
      name: Faker::Lorem.word.capitalize,
      quantity: Faker::Number.between(from: 1, to: 100),
      expiration_date: Faker::Date.between(from: Date.today, to: 1.year.from_now)
    )
  end
  10.times do
    Patient.create(
        name: Faker::Name.name,
        age: Faker::Number.between(from: 1, to: 100),
        address: Faker::Address.full_address,
        inventory_id: Faker::Number.between(from: 1, to: 20)
    )
  end
  

puts "✅ Done seeding!"
