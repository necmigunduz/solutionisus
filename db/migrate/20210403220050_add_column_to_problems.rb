class AddColumnToProblems < ActiveRecord::Migration[6.1]
  def change
    add_reference :problems, :user, null: false, foreign_key: true
    add_reference :problems, :category, null: false, foreign_key: true
  end
end
