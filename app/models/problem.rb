class Problem < ApplicationRecord
    belongs_to :user 
    belongs_to :category
    has_many :social_facts
    has_many :scientific_facts
end
