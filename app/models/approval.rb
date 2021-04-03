class Approval < ApplicationRecord
  belongs_to :user
  belongs_to :solution_suggestion
end
