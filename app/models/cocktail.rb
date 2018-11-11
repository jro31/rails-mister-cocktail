class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  mount_uploader :picture, PhotoUploader
end
