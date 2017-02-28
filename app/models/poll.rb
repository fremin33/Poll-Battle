class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :responses
  has_many :votes, through: :responses

  validates :title, :category, :user, presence: true
  validates :title, uniqueness: true

end
