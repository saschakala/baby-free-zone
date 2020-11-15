class DropSideEffect < ActiveRecord::Migration[6.0]
  def change
    drop_table :side_effects
  end
end
