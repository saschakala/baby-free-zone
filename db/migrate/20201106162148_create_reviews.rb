class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :side_effects
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :birth_control, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
