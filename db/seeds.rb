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

RoomStatus.find_or_create_by(id: 1) do |room_status|
    room_status.name = 'In room'
end

MemberStatus.find_or_create_by(id: 1) do |member_status|
    member_status.name = 'Active'
end

MemberGrade.find_or_create_by(id: 1) do |member_grade|
    member_grade.name = 'Admin'
end

Member.find_or_create_by(id: 1) do |member|
    member.role_id = 1
    member.room_status_id = 1
    member.member_status_id = 1
    member.member_grade_id = 1
    member.email = 'admin@example.com'
    member.password = 'password'
    member.name = 'Admin'
    member.member_specific_id = 'Admin'
end