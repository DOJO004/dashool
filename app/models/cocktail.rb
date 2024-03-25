class Cocktail < ApplicationRecord
  has_one_attached :main_image

  def self.ransackable_attributes(_auth_object = nil)
    ["name"]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
