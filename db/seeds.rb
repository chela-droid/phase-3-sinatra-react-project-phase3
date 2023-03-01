puts "🌱 Seeding spices..."

# Seed your database here
20.times do
    Inventory.create(
      name: Faker::Name.unique.name,
      quantity: Faker::Number.between(from: 1, to: 100),
      expiration_date: Faker::Date.between(from: Date.today, to: 1.year.from_now)
    )
  end
  

puts "✅ Done seeding!"
