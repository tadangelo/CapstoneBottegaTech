class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :assignment
      t.text :code
      t.text :notes
      t.date :date

      t.timestamps
    end
  end
end
