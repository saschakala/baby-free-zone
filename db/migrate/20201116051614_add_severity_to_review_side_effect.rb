class AddSeverityToReviewSideEffect < ActiveRecord::Migration[6.0]
  def change
    add_column :review_side_effects, :severity, :integer
  end
end
