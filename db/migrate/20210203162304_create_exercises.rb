class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :description
      t.string :date
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
