class SideEffect < ApplicationRecord
  validates :name, presence: true
  has_many :birth_control_side_effects
  has_many :birth_controls, through: :birth_control_side_effects
end
