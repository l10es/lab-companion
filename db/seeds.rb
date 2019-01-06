# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.find_or_create_by(id: 1) do |role|
  role.name = 'Admin'
end

Role.find_or_create_by(id: 2) do |role|
  role.name = 'Member'
end

RoomStatus.find_or_create_by(id: 1) do |room_status|
  room_status.name = 'Unknown'
end

RoomStatus.find_or_create_by(id: 2) do |room_status|
  room_status.name = 'In room'
end

Status.find_or_create_by(id: 1) do |status|
  status.name = 'Active'
end

Status.find_or_create_by(id: 2) do |status|
  status.name = 'In active'
end

Grade.find_or_create_by(id: 1) do |grade|
  grade.name = 'Other'
end

Grade.find_or_create_by(id: 2) do |grade|
  grade.name = 'B1'
end

Grade.find_or_create_by(id: 3) do |grade|
  grade.name = 'B2'
end

Grade.find_or_create_by(id: 4) do |grade|
  grade.name = 'B3'
end

Grade.find_or_create_by(id: 5) do |grade|
  grade.name = 'B4'
end

Grade.find_or_create_by(id: 6) do |grade|
  grade.name = 'M1'
end

Grade.find_or_create_by(id: 7) do |grade|
  grade.name = 'M2'
end

Grade.find_or_create_by(id: 8) do |grade|
  grade.name = 'D1'
end

Grade.find_or_create_by(id: 9) do |grade|
  grade.name = 'D2'
end

Grade.find_or_create_by(id: 10) do |grade|
  grade.name = 'D3'
end

Grade.find_or_create_by(id: 11) do |grade|
  grade.name = 'D4'
end

Category.find_or_create_by(id: 1) do |category|
  category.name = 'General'
end

Member.find_or_create_by(id: 1) do |member|
  member.email = 'admin@example.com'
  member.password = 'password'
  member.name = 'Admin'
  member.role_id = 1
  member.status_id = 1
  member.specific_id = 'Admin'
end