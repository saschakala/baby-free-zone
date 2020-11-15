class Review < ApplicationRecord
  belongs_to :user
  belongs_to :birth_control
  validates :rating, :inclusion => 1..10
end
