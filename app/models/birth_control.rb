class BirthControl < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    validates :name, presence: true, uniqueness: true
    validates :method, presence: true
    validates :active_ingredient, presence: true
    validates :dosage, presence: true
end
