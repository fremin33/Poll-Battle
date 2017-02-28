class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :response
  delegate :poll, to: :response
  validate :one_vote_per_user

  def one_vote_per_user
    if self.poll.votes.where(user: self.user).any?
      errors.add(:poll, "already voted")
    end
  end
end
