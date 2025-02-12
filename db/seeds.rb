puts 'Emptying the DB...'
Restaurant.destroy_all

10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORY.sample,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
end

puts "...#{Restaurant.count} restaurants."
