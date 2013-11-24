class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # POST /posts
  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: 'Post was successfully created.' }
        format.json { render json: posts_url, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

end
