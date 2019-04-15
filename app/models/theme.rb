class Theme < ApplicationRecord
  # belongs_to :user
  has_many :groups
  belongs_to :user
end
