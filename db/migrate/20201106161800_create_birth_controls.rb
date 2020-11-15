class CreateBirthControls < ActiveRecord::Migration[6.0]
  def change
    create_table :birth_controls do |t|
      t.string :name
      t.string :method
      t.string :active_ingredient
      t.float :dosage
      t.string :type #for pills only (to signify if combo or progestin)

      t.timestamps
    end
  end
end
