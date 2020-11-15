class AddGenericNameToBirthControls < ActiveRecord::Migration[6.0]
  def change
    add_column :birth_controls, :generic_name, :string
  end
end
