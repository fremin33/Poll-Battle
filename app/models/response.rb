class Response < ApplicationRecord
  belongs_to :poll
  has_many :votes, dependent: :destroy
  has_attachment :picture
  validates :picture, presence: true
  validates :label, presence: true
  validates :label, length: {minimum: 2, maximum: 30}
  validates :poll, presence: true
  validate :max_two_responses

  def max_two_responses
    if self.poll.responses.size > 2
      errors.add(:poll, "Only two possible responses")
    end
  end
end
