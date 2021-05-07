class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :content, presence: true

  # scope method that display's the most recent comment at the top
  scope :comment_order, -> { order(created_at: :desc) }
end
