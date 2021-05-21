module CommentsHelper
    def comment_timestamp(comment)
        comment.created_at.strftime("%B %-d, %Y at %-l:%M%P")
    end
end
