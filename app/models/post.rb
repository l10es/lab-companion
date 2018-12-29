class Post < ApplicationRecord
  belogns_to :member
  belongs_to :category
end
