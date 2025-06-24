require 'faker'

# Supprimer d'abord les promenades (strolls), puis chiens et promeneurs, puis les villes
Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

# Ensuite, tu peux créer tes données comme prévu
5.times do
  City.create!(city_name: Faker::Address.city)
end

City.all.each do |city|
  5.times do
    Dogsitter.create!(
      name: Faker::Name.first_name,
      city: city
    )

    Dog.create!(
      name: Faker::Creature::Dog.name,
      city: city
    )
  end
end

20.times do
  Stroll.create!(
    date: Faker::Time.forward(days: 7, period: :evening),
    dog: Dog.all.sample,
    dogsitter: Dogsitter.all.sample
  )
end

