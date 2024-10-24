# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Reset des données existantes
City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

# Création de villes
paris = City.create(city_name: 'Paris')
lyon = City.create(city_name: 'Lyon')
marseille = City.create(city_name: 'Marseille')

# Création de dogsitters
dogsitter1 = Dogsitter.create(first_name: 'Alice', last_name: 'Durand', city: paris)
dogsitter2 = Dogsitter.create(first_name: 'Bob', last_name: 'Martin', city: lyon)
dogsitter3 = Dogsitter.create(first_name: 'Charlie', last_name: 'Dupont', city: marseille)

# Création de chiens
dog1 = Dog.create(name: 'Rex', city: paris)
dog2 = Dog.create(name: 'Max', city: lyon)
dog3 = Dog.create(name: 'Bella', city: marseille)
dog4 = Dog.create(name: 'Lucky', city: paris)

# Création de promenades (strolls)
Stroll.create(dogsitter: dogsitter1, dog: dog1)  # Alice promène Rex à Paris
Stroll.create(dogsitter: dogsitter2, dog: dog2)  # Bob promène Max à Lyon
Stroll.create(dogsitter: dogsitter3, dog: dog3)  # Charlie promène Bella à Marseille
Stroll.create(dogsitter: dogsitter1, dog: dog4)  # Alice promène Lucky à Paris
