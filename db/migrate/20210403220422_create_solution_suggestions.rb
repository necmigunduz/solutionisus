class CreateSolutionSuggestions < ActiveRecord::Migration[6.1]
  def change
    create_table :solution_suggestions do |t|
      t.references :problem, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
