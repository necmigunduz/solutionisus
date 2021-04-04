class User < ApplicationRecord
  has_secure_password
  has_many :categories
  has_many :problems
  has_many :solution_suggestions
  has_many :scientific_facts
  has_many :social_facts
  has_many :approvals
end
