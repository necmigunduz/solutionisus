class Category < ApplicationRecord
  belongs_to :user
  has_many :problems
end
