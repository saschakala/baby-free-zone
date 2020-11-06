class Review < ApplicationRecord
  belongs_to :user
  belongs_to :birth_control
end
