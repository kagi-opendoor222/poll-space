class Group < ApplicationRecord
  belongs_to :theme
  has_many :votes

  def votes_count
    self.votes.length
  end
  def self.votes_counts
    self.all.map(&:votes_count)
  end
  def vote_ratio
    all_counts = self.theme.groups.votes_counts
    return (self.votes.length.to_f / all_counts.sum * 100).round
  end
end
