class SolutionSuggestion < ApplicationRecord
  belongs_to :problem
  belongs_to :user
  has_many :social_facts
  has_many :scientific_facts
  has_many :approvals
  
end
