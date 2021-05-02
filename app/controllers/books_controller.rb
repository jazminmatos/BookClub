class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update]
    
    def index
        @books = Book.all
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :summary)
    end
end
