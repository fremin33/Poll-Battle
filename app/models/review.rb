class Review < ApplicationRecord
  belongs_to :poll
  belongs_to :user

  validates :content, presence: true
end
