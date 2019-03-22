class Group < ApplicationRecord
  belongs_to :theme
  has_many :votes
end
