class Category < ApplicationRecord
  has_many :polls
  has_attachment :picture
end
