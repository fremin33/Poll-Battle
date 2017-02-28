class Response < ApplicationRecord
  belongs_to :poll
  has_many :votes
  has_attachment :picture
  validates :label, :poll, presence: true
  validate :max_two_responses

  def max_two_responses
    if self.poll.responses.size >= 2
      errors.add(:poll, "Only two possible responses")
    end
  end
end
