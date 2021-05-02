class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update]
    before_action :authenticate_user!
    
    def index
        @comments = Comment.all
    end

    def show
    end

    def new
        @comment = Comment.new
    end

    def create
        comment = Comment.new(comment_params)

        if comment.save
            redirect_to comment_path(comment)
            # Will want to change this to the comment's book page
            # will need to set a book instance
        else
            render :new
        end
    end

    def edit
    end

    def update
        if comment.update(comment_params)
            redirect_to comment_path(comment)
            # Will want to change this to the comment's book page
            # will need to set a book instance
        else
            render :edit
        end
    end

    def destroy
        Comment.find(params[:id]).destroy
        redirect_to comments_path
        # Will want to change this to the comment's book page
        # will need to set a book instance
    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

    def set_comment
        @comment = Comment.find(params[:id])
    end
end
