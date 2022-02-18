class Bookmark < ApplicationRecord
  # Associations
  belongs_to :movie
  belongs_to :list

  # Validations
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
