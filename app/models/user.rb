class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :password, :username, presence: true
  validates :email, :username, uniqueness: true

  has_many :polls
  has_many :votes


  def voted_for(poll)
    Response.joins(:poll, :votes).find_by(votes: { user: self }, poll: poll)
  end
end
