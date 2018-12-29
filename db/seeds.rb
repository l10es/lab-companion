# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.find_or_create_by(id: 0) do |role|
  role.name = 'Admin'
end

Role.find_or_create_by(id: 1) do |role|
  role.name = 'member'
end

RoomStatus.find_or_create_by(id: 0) do |room_status|
  room_status.name = 'In room'
end

RoomStatus.find_or_create_by(id: 1) do |room_status|
  room_status.name = 'Unknown'
end

MemberStatus.find_or_create_by(id: 0) do |member_status|
  member_status.name = 'Active'
end

MemberGrade.find_or_create_by(id: 0) do |member_grade|
  member_grade.name = 'Admin'
end

MemberGrade.find_or_create_by(id: 1) do |member_grade|
  member_grade.name = 'B1'
end

MemberGrade.find_or_create_by(id: 2) do |member_grade|
  member_grade.name = 'B2'
end

MemberGrade.find_or_create_by(id: 3) do |member_grade|
  member_grade.name = 'B3'
end

MemberGrade.find_or_create_by(id: 4) do |member_grade|
  member_grade.name = 'B4'
end

MemberGrade.find_or_create_by(id: 5) do |member_grade|
  member_grade.name = 'M1'
end

MemberGrade.find_or_create_by(id: 6) do |member_grade|
  member_grade.name = 'M2'
end

MemberGrade.find_or_create_by(id: 7) do |member_grade|
  member_grade.name = 'D1'
end

MemberGrade.find_or_create_by(id: 8) do |member_grade|
  member_grade.name = 'D2'
end

MemberGrade.find_or_create_by(id: 9) do |member_grade|
  member_grade.name = 'D3'
end

MemberGrade.find_or_create_by(id: 10) do |member_grade|
  member_grade.name = 'D4'
end

MemberGrade.find_or_create_by(id: 11) do |member_grade|
  member_grade.name = 'Other'
end

Member.find_or_create_by(id: 0) do |member|
  member.email = 'admin@example.com'
  member.password = 'password'
  member.name = 'Admin'
  member.member_specific_id = 'Admin'
end