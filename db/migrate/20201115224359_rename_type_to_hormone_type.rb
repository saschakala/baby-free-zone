class RenameTypeToHormoneType < ActiveRecord::Migration[6.0]
  def change
    rename_column :birth_controls, :type, :hormone_type
  end
end
