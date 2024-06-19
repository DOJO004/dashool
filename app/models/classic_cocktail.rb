class ClassicCocktail < ApplicationRecord
  has_one_attached :image
  def self.ransackable_attributes(_auth_object = nil)
    %w[base_wine created_at garnish glass history id id_value ingredient method name skill updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
