class Profile < ApplicationRecord
  validates :name, :phone, :address, :descript, presence: true
  has_one_attached :avatar
  belongs_to :user

end
