class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: {
    minimum: 6,
    too_short: 'Comment is too short. Please add more information.'
  }
  validates :movie_id, uniqueness: { scope: :list_id }
end
