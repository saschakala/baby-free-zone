class SideEffect < ApplicationRecord
  validates :name, presence: true
  has_many :review_side_effects, dependent: :destroy
  has_many :reviews, through: :review_side_effects, dependent: :destroy

  accepts_nested_attributes_for :review_side_effects



end
