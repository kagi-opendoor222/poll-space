class Group < ApplicationRecord
  belongs_to :theme
  has_many :votes

  def votes_count
    return self.votes.length
  end
end
