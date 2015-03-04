class CommentsController < ApplicationController
end


# find the post who matches the post_id
# take that post, create a new row in the comments with matching ID's and only allow input for cols name and body
def create
  @post = Post.find(param[:post_id])
  @comment = @post.comments.create(params[:comment].permit(:name, :body))

  redirect_to post_path(@post)
end
