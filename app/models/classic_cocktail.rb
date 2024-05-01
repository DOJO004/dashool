class ClassicCocktail < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["base_wine", "created_at", "garnish", "glass", "history", "id", "id_value", "ingredient", "method", "name", "skill", "updated_at"]
    end
   
    def self.ransackable_associations(auth_object = nil)
        []
    end
end
