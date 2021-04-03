class CreateScientificFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :scientific_facts do |t|
      t.string :scientific_fact_title
      t.string :scienctific_fact_definition

      t.timestamps
    end
  end
end
