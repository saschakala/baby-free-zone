class SideEffect < ApplicationRecord
  validates :name, presence: true
  has_many :review_side_effects
  has_many :reviews, through: :review_side_effects
end
