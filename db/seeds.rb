# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/seeds/assign_school.csv', headers: true) do |row|
  unless AssignSchool.find_by(name: row["assign_school"])
    AssignSchool.create!(
      name: row
    )
  end
end

CSV.foreach('db/seeds/university_branch.csv', headers: true) do |f|
  unless UniversityBranch.find_by(name: f['university_branch'])
    UniversityBranch.create!(
      name: f["university_branch"],
      twitter_link: f["Twitter_url"]
    )
  end
end

