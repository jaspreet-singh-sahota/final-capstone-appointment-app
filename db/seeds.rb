# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Facility.create!(name: "spa", image_url: 'url', brief_description: "hello", detailed_description: "hello world", free_trial: "3days", three_months_package: "60$", six_months_package: "70$", annual_package: "100")

p "Created #{Facility.count} movies"