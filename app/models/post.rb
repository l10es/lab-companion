class Post < ApplicationRecord
  belongs_to :member
  belongs_to :category
end
