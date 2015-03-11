class CommentsController < ApplicationController

def new
  @post = Post.find(param[:post_id])
  @comment = @post.comments.create(params[:comment].permit(:name, :body))
end

def create
  @post = Post.find(param[:post_id])
  @comment = @post.comments.create(params[:comment].permit(:name, :body))
end

end
