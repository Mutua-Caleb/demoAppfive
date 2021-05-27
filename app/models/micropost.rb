class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: {maximum: 140} # this is a simple validation that checks out for the length of the micropost
end
