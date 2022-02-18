class List < ApplicationRecord
  # Associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  # Validations
  validates :name, presence: true, uniqueness: true

end
