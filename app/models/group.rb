class Group < ApplicationRecord
  belongs_to :theme
  has_many :votes

  def votes_count
    self.votes.length
  end
  def self.votes_counts
    self.all.map(&:votes_count)
  end
end
