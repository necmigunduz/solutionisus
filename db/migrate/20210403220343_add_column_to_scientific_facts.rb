class AddColumnToScientificFacts < ActiveRecord::Migration[6.1]
  def change
    add_reference :scientific_facts, :user, null: false, foreign_key: true
    add_reference :scientific_facts, :problem, null: false, foreign_key: true
  end
end
