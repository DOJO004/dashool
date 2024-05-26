class Article < ApplicationRecord
    has_one_attached :cover_image
    has_rich_text :content

    validates :title, :category, :content, presence: true
end
