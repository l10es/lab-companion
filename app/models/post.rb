class Post < ApplicationRecord
    belongs_to :member
    belongs_to :post_categories
    belongs_to :post_status
end
