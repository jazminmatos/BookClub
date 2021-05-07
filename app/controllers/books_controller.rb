class BooksController < ApplicationController
    before_action :set_book, only: [:edit, :update, :destroy]
    before_action :authenticate_user!
    
    def index
        # if I'm accessing this via the nested /club/:club_id/books
        if params[:club_id]
            # if the club is found
            if Club.find_by(id: params[:club_id])
                # show all of the club's books
                @books = Club.find(params[:club_id]).books
            # else if the club is NOT found
            else
                flash[:alert] = "Club not found"
                redirect_to clubs_path
            end
        # if I'm accessing this via the non-nested root /books
        else 
            # show ALL of the books
            @books = Book.all
        end
    end

    def show
        if Book.find_by(id: params[:id])
            @book = Book.find(params[:id])
            @comments = @book.comments.comment_order
        else
            flash[:alert] = "Book not found"
            redirect_to club_books_path(params[:club_id])
        end
    end

    def new
        # if I'm accessing this via a nested route and if club is found, @club will be defined
        if params[:club_id] && @club = Club.find_by(id: params[:club_id])
            # create a new book w/ a club association
            @book = Book.new(club_id: @club.id)
        else
            redirect_to clubs_path, alert: "You can't create a book without a club...nice try though"
        end
    end

    def create
        @club = Club.find_by(id: params[:club_id])
        @book = Book.new(book_params)

        if @book.save
            redirect_to book_path(@book)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @book.update(book_params)
            redirect_to book_path(@book)
        else
            render :edit
        end
    end

    def destroy
        @book.destroy
        redirect_to books_path
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :summary, :club_id, :user_id)
    end

    def set_book
        @book = Book.find(params[:id])
    end
end
