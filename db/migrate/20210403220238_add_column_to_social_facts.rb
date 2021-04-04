class AddColumnToSocialFacts < ActiveRecord::Migration[6.1]
  def change
    add_reference :social_facts, :user, null: false, foreign_key: true
    add_reference :social_facts, :problem, null: false, foreign_key: true
  end
end
