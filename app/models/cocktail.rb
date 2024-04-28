class Cocktail < ApplicationRecord
  has_rich_text :introduce
  has_many_attached :images
  has_many :likes
  belongs_to :user
  validate :valid_image

  def self.ransackable_attributes(_auth_object = nil)
    %w[name base_wine]
  end

  def self.ransackable_associations(_auth_object = nil)
    []  
  end


  def valid_image
    return unless images.attached?
    images.each do |image|

      unless %w[image/jpeg image/png].include?(image.blob.content_type)
        errors.add(:images, "'#{image.filename}' must be a JPG or PNG file")
      end
  
      if image.blob.byte_size > 500.kilobyte
        errors.add(:images, " '#{image.filename}' is more than 500KB")
      end
    end
  end
end
