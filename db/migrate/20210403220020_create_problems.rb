class CreateProblems < ActiveRecord::Migration[6.1]
  def change
    create_table :problems do |t|
      t.string :problem_title
      t.text :problem_explanation

      t.timestamps
    end
  end
end
