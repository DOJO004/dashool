class Cocktail < ApplicationRecord
  has_rich_text :introduce
  has_many_attached :images
  
  belongs_to :user

  def self.ransackable_attributes(_auth_object = nil)
    %w[name base_wine]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
