class Book < ApplicationRecord
  belongs_to :user
  belongs_to :club
  has_many :comments

  validates :title, :author, :summary, presence: true
  #validates :summary, length: { minimum: 25 }
end
