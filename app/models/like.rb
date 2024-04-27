class Like < ApplicationRecord
  belongs_to :user
  belongs_to :cocktail

  validates :user_id, uniqueness: { scope: :cocktail_id, message: "has already liked this cocktail" }
end
