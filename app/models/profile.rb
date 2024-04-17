class Profile < ApplicationRecord
  validates :name, :phone, :address, :descript, presence: true
  belongs_to :user
end
