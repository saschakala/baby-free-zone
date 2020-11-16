class Review < ApplicationRecord
  belongs_to :user
  belongs_to :birth_control
  has_many :review_side_effects
  has_many :side_effects, through: :review_side_effects

  validates :rating, :inclusion => 1..10

  accepts_nested_attributes_for :review_side_effects
  
  scope :bc, -> (id) { where(birth_control_id: id) }

  def bc_name
    self.birth_control.name
  end

end
