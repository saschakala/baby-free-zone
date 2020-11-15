class ReviewSideEffect < ApplicationRecord
    belongs_to :review
    belongs_to :side_effect
end