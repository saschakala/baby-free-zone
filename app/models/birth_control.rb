class BirthControl < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :birth_control_side_effects
    has_many :side_effects, through: :birth_control_side_effects
    validates :name, presence: true, uniqueness: true
    validates :method, presence: true
    validates :active_ingredient, presence: true
    validates :dosage, presence: true
end
