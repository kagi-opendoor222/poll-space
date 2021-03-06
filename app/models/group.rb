class Group < ApplicationRecord
  belongs_to :theme
  has_many :votes

  has_one_attached :image

  def votes_count
    self.votes.length
  end
  def self.votes_counts
    self.all.map(&:votes_count)
  end
  def self.to_ratio(counts)
    return counts.map do |num|
      (num / counts.sum.to_f * 100).round
    end
  end

  def vote_ratio
    all_counts = self.theme.groups.votes_counts
    return all_counts.sum > 0 ? (self.votes.length.to_f / all_counts.sum * 100).round : 0
  end
end
