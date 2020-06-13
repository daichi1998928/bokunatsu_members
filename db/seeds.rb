# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/seeds/assign_school.csv', headers: true) do |row|
  
  if AssignSchool.count < 20
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

grades = [1,2,3,4]
if Grade.count < 4
  grades.each do |grade|
    Grade.create(number: grade)
  end
end

titles = ["支部長","小学校リーダー","なし"]
if TitleOfBranch.count < 3
  titles.each do |title|
    TitleOfBranch.create(name: title)
  end
end