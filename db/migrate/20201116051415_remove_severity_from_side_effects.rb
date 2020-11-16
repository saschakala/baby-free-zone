class RemoveSeverityFromSideEffects < ActiveRecord::Migration[6.0]
  def change
    remove_column :side_effects, :severity
  end
end
