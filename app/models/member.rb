class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # devise :database_authenticatable, :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :todos
  belongs_to :member_status
  belongs_to :member_grade
  belongs_to :room_status
  belongs_to :role
end
