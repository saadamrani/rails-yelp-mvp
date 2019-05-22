require 'faker'

Restaurant.destroy_all
puts "creating restaurants..."
50.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CAT.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
