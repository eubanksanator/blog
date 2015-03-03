class CommentsController < ApplicationController
end

def create
  @post = Post.find(param[:post_id])
  @comment = @post.comments.create(params[:comment].permit(:name, :body))
end
