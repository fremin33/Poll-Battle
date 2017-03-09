class Review < ApplicationRecord
  belongs_to :poll
  belongs_to :user

  validates :content, presence: true
  validates :content, length: {minimum: 2, maximum: 56}, allow_blank: true
end

