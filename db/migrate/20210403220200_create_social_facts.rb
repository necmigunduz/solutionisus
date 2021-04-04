class CreateSocialFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :social_facts do |t|
      t.string :social_fact_title
      t.string :social_fact_definition

      t.timestamps
    end
  end
end
