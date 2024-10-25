# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Student.all.each do |student|
  student.blogs.create(title: "Dummy Blog foor Student #{
    student.id}", content: "Custom content pending")
  student.blogs.create(title: "Dummy Blog foor Student #{
    student.id}", content: "Custom content pending")
end

Course.create(name: "Ruby on rails", description: "pending")
Course.create(name: "React Js", description: "pending")
Course.create(name: "Angular", description: "pending")
Course.create(name: "Node Js", description: "pending")
Course.create(name: "Java", description: "pending")
Course.create(name: "python", description: "pending")
