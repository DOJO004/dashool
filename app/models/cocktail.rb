class Cocktail < ApplicationRecord
  has_one_attached :main_image
  belongs_to :user

  def self.ransackable_attributes(_auth_object = nil)
    %w[name base_wine]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
