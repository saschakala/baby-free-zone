class RemoveSideEffectsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :side_effects
  end
end
