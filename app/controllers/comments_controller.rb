class CommentsController < ApplicationController
  # POST /comments
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to Post
  end
end
