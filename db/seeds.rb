# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

p 'create teacher list'
10.times do
  Teacher.create(name: Faker::Name.name, subject: Faker::Educator.subject, age: rand(60))
end

p 'create student list subjects and klass'
10.times do
  Teacher.all.each do |teacher|
    teacher.students.create(name: Faker::Name.name, age: rand(30))
    teacher.klasses.create(name: Faker::Educator.subject, period: rand(4))
  end
end

p 'create student klass enrollments'
10.times do
  Teacher.all.each do |teacher|
    teacher.students.each do |student|
      teacher.klasses.each do |klass|
        student.klasses << klass
      end
    end
  end
end
