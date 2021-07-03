class Club < ApplicationRecord
    has_many :books
    has_many :users, through: :books

    validates :name, presence: true, uniqueness: true

    #scope method => render the club w/ the MOST books
    #order by books, make sure it's from max to min, limit to 1
    scope :most_books, -> { joins(:books).group("books.club_id").order("count(books.club_id) desc").limit(1) }
end
