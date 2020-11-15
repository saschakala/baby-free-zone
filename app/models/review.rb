class Review < ApplicationRecord
  belongs_to :user
  belongs_to :birth_control
  has_many :side_effects
  validates :rating, :inclusion => 1..10
end
