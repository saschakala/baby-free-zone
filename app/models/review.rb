class Review < ApplicationRecord
  belongs_to :user
  belongs_to :birth_control
  has_many :review_side_effects
  has_many :side_effects, through: :review_side_effects

  validates :rating, presence: true
  validates :title, presence: true

  accepts_nested_attributes_for :review_side_effects
  accepts_nested_attributes_for :side_effects
  
  scope :bc, -> (id) { where(birth_control_id: id) }

  def bc_name
    self.birth_control.name
  end

  # def side_effect_ids=(ids)
  #   id.each do |id|
  #     side_effect = SideEffect.find_by_id(id)
  #     self.side_effects << side_effect
  #   end
  # end


  # def has_side_effects?
  #   if self.side_effects[0] != ""
  #     true
  #   end
  # end

  def has_side_effects?
    self.side_effects[0]
  end

end
