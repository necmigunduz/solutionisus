class CreateApprovals < ActiveRecord::Migration[6.1]
  def change
    create_table :approvals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :solution_suggestion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
