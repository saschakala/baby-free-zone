class SideEffect < ApplicationRecord
  belongs_to :review
  validates :name, presence: true
  validates :severity, :inclusion => 1..5

end
