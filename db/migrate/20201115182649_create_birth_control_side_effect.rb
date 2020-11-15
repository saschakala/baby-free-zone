class CreateBirthControlSideEffect < ActiveRecord::Migration[6.0]
  def change
    create_table :birth_control_side_effects do |t|
      t.belongs_to :birth_control, null: false, foreign_key: true
      t.belongs_to :side_effect, null: false, foreign_key: true
    end
  end
end
