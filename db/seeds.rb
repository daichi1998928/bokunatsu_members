# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/seeds/assign_school.csv', headers: true) do |row|
    AssignSchool.create!(
      name: row
    )
end

CSV.foreach('db/seeds/university_branch.csv', headers: true) do |f|
    UniversityBranch.create!(
      name: f["university_branch"],
      twitter_link: f["Twitter_url"]
    )
end

