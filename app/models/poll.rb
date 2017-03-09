class Poll < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :responses, dependent: :destroy
  has_many :votes, through: :responses, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: {minimum: 2, maximum: 56}
  validates :category_id, presence: true


end
