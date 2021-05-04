class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    
    def index
        # if I'm accessing this via the nested /club/:club_id/books
        if params[:club_id]
            # if the club is found
            if Club.find_by(id: params[:club])
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
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        @book.user_id = current_user.id

        if @book.save
            redirect_to book_path(@book)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if book.update(book_params)
            redirect_to book_path(book)
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
        params.require(:book).permit(:title, :author, :summary)
    end

    def set_book
        @book = Book.find(params[:id])
    end
end
