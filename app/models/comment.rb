class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :memo

  validates :text, presence: true
end
