class CommentsController < ApplicationController
    before_action :set_comment, only: [:edit, :update, :destroy]
    before_action :authenticate_user!
    
    # def index
    #     # if I'm accessing this via the nested /book/:book_id/comments
    #     if params[:book_id]
    #         # if book is found
    #         if Book.find_by(id: params[:book_id])
    #             # show all of the book's comments
    #                 @comments = Book.find(params[:book_id]).comments
    #         else
    #             flash[:alert] = "Book not found"
    #             redirect_to books_path
    #         end
    #     # if I'm accessing this via the non-nested root /comments
    #     else
    #         # show ALL of the comments
    #         # if there's no index page, perhaps this should redirect...
    #         @comments = Comment.all
    #     end
    # end

    # def show
    #     if Comment.find_by(id: params[:id])
    #         @comment = Comment.find(params[:id])
    #     else
    #         flash[:alert] = "Comment not found"
    #         redirect_to book_comments_path(params[:book_id])
    #     end
    # end

    def new
        # if I'm accessing this via a nested route and if book is found, @book will be defined
        if params[:book_id] && @book = Book.find_by(id: params[:book_id])
            # create a new comment w/ a book association
            @comment = Comment.new(book_id: @book.id)
        else
            redirect_to books_path, alert: "Book not found"
        end
    end

    def create
        @book = Book.find_by(id: params[:book_id])
        @comment = Comment.new(comment_params)

        if @comment.save
            redirect_to book_path(@book)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @comment.update(comment_params)
            redirect_to book_path(@comment.book_id)
        else
            render :edit
        end
    end

    def destroy
        @comment.destroy
        redirect_to book_path(@comment.book_id)
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :book_id, :user_id)
    end

    def set_comment
        @comment = Comment.find(params[:id])
    end
end
