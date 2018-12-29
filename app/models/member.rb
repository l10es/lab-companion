class Member < ApplicationRecord
  belongs_to :role
  belongs_to :room_status
  belongs_to :status
  belongs_to :grade
  has_many :todos
  has_many :posts
  has_one :icon
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
