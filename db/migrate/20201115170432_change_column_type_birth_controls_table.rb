class ChangeColumnTypeBirthControlsTable < ActiveRecord::Migration[6.0]
  def change
    change_column :birth_controls, :dosage, :string
  end
end
